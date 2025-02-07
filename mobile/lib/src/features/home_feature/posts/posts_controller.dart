import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mobile/src/features/auth_feature/auth_controller.dart';
import 'package:mobile/src/features/home_feature/posts/posts_service.dart';
import 'package:mobile/src/features/home_feature/posts/reply_page.dart';

import '../../../core/constants.dart';
import '../../../models/post.dart';
import '../../../models/user.dart';
import '../../../models/reply.dart';
import '../dashboard_view.dart';

class PostsController extends GetxController {
  late User user;
  late AuthController authController;
  final titleController = TextEditingController();
  final descController = TextEditingController();
  final numberStreetController = TextEditingController();
  final cityState = TextEditingController();
  final postalCode = TextEditingController();
  final repliesController = TextEditingController();

  final postService = PostsService();

  Rx<bool> isLoading = true.obs;

  var allPosts = <Post>[].obs;
  var postReplies = <Reply>[].obs;

  @override
  void onReady() {
    super.onReady();
    authController = Get.find<AuthController>();
    user = authController.user;
    print('user $user');
    getPosts();
  }

  void getPosts() async {
    try {
      final posts = await postService.getPosts();
      print(posts);
      allPosts.assignAll(posts);
      isLoading.toggle();
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

  void addPost(NewPost post) async {
    try {
      postService.addPosts(post);
      postService.getPosts();
      Get.offAll(DashboardView());
      Get.showSnackbar(GetSnackBar(
        title: 'Success!',
        message: "You have successfully added a post",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.black38,
        leftBarIndicatorColor: Colors.green,
      ));
    } catch (e) {
      Get.showSnackbar(GetSnackBar(
        title: 'Something Went Wrong',
        message: e.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: kButtonColor,
        leftBarIndicatorColor: kErrorColor,
      ));
    }
  }

  Future<List<Reply>?> getReplies(String postId) async {
    try {
      final replies = await postService.getReplies(postId);
      postReplies.assignAll(replies);
      return replies;
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

  void addReply(NewReply reply) async {
    try {
      postService.addReply(reply);
      final replies = await postService.getReplies(reply.post_id);
      postReplies.assignAll(replies);
      Get.showSnackbar(GetSnackBar(
        title: 'Success!',
        message: "You have successfully added a reply",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.black38,
        leftBarIndicatorColor: Colors.green,
      ));
      Get.offAll(RepliesPage(postId: reply.post_id));
    } catch (e) {
      Get.showSnackbar(GetSnackBar(
        title: 'Something Went Wrong',
        message: e.toString(),
        snackPosition: SnackPosition.TOP,
        backgroundColor: kButtonColor,
        leftBarIndicatorColor: kErrorColor,
      ));
    }
  }
}
