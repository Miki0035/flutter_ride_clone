import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/data/authentication_repository.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/popups/full_screen_loader.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final hidePassword = true.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> loginUser() async {
    try {
      if (!loginFormKey.currentState!.validate()) {
        return;
      }
      RFullScreenLoader.openLoadingDialog(
          "Logging you in", RImages.loaderAnimation);
      await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());
      RFullScreenLoader.stopLoading();
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      RFullScreenLoader.stopLoading();
      throw 'Something Went Wrong. Please try again';
    }
    // else {
    //   Get.offAll(() => const RBottomNavigationScreen());
    // }
  }
}
