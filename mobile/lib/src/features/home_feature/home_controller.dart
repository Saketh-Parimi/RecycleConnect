import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobile/src/features/auth_feature/auth_controller.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

import '../../core/constants.dart';
import '../../models/post.dart';
import '../../models/user.dart';
import 'posts/posts_service.dart';

class HomeController extends GetxController with StateMixin {
  late AuthController authController;
  late GoogleMapController mapController;
  late User user;
  late LatLng normalCoordinates;
  late LatLng batteryCoordinates;
  late Position location;
  @override
  void onInit() {
    authController = Get.find<AuthController>();
    user = authController.user;
    print(user.id);
    super.onInit();
  }

  @override
  void onReady() async {
    location = await determinePosition();
    final (normalCoordinates, batteryCoordinates) =
        await searchForRecyclingPlants() ?? (null, null);
    this.normalCoordinates = normalCoordinates!;
    this.batteryCoordinates = batteryCoordinates!;
    getMyPosts();
    super.onReady();
  }

  RxInt currentIndex = 0.obs;

  final postService = PostsService();

  var userPosts = <Post>[].obs;

  void getMyPosts() async {
    try {
      final id = authController.user.id;
      print('id: $id');
      final posts = await postService.getMyPosts(id);
      userPosts.assignAll(posts);
    } catch (e) {
      print(e.toString());
      Get.showSnackbar(GetSnackBar(
        title: "Something Went Wrong",
        message: e.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: kButtonColor,
        leftBarIndicatorColor: kErrorColor,
        duration: Duration(seconds: 2),
      ));
    }
  }

  Future<(LatLng, LatLng)?> searchForRecyclingPlants() async {
    try {
      final argLat = location.latitude;
      final argLong = location.longitude;
      // AIzaSyBKHSgm_sa99Nu8E93peWt_KHTYxgXeLRg
      const String normalType = 'recycling_plants';
      const String endpoint =
          'https://maps.googleapis.com/maps/api/place/nearbysearch/json';
      final String normalUrl =
          '$endpoint?location=$argLat,$argLong&radius=1000&type=$normalType&key=${dotenv.env['G_MAPS_API_KEY']}';
      final normalResponse = await http.get(Uri.parse(normalUrl));
      final Map<String, dynamic> normalDecodedResponse =
          json.decode(normalResponse.body);
      final normalResults = normalDecodedResponse['results'];
      final Map<String, dynamic> normalNearestPlace = normalResults.first;
      final Map<String, dynamic> normalNearestLocation =
          normalNearestPlace['geometry']['location'];
      final double normalNearestLat = normalNearestLocation['lat'];
      final double normalNearestLng = normalNearestLocation['lng'];
      final LatLng normalCoordinate =
          LatLng(normalNearestLat, normalNearestLng);
      const String batteryType = "battery_recycling_plants";
      final String batteryUrl =
          '$endpoint?location=$argLat,$argLong&radius=1000&type=$batteryType&key=${dotenv.env['G_MAPS_API_KEY']}';
      final batteryResponse = await http.get(Uri.parse(batteryUrl));
      final Map<String, dynamic> batteryDecodedResponse =
          json.decode(batteryResponse.body);
      final batteryResults = batteryDecodedResponse['results'];
      final Map<String, dynamic> batteryNearestPlace = batteryResults.first;
      final Map<String, dynamic> batteryNearestLocation =
          batteryNearestPlace['geometry']['location'];
      final double batteryNearestLat = batteryNearestLocation['lat'];
      final double batteryNearestLng = batteryNearestLocation['lng'];
      final LatLng batteryCoordinate =
          LatLng(batteryNearestLat, batteryNearestLng);

      return (normalCoordinate, batteryCoordinate);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
