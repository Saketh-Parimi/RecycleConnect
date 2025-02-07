import 'package:get/get.dart';
import 'package:mobile/src/features/auth_feature/auth_service.dart';

import '../../../core/constants.dart';

class ReplyController extends GetxController {
  final authService = AuthService();

  Future<String> findUser(String id) async {
    try {
      final user = await authService.findUser(id);
      return user;
    } catch (e) {
      Get.showSnackbar(const GetSnackBar(
        title: "Something Went Wrong",
        message: 'error occured',
        snackPosition: SnackPosition.TOP,
        backgroundColor: kButtonColor,
        leftBarIndicatorColor: kErrorColor,
        duration: Duration(seconds: 2),
      ));
      print(e.toString());
      return '';
    }
  }
}
