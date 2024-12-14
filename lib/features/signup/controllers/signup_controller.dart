import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';
import 'package:ride_clone/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  GlobalKey<FormState> signUpForm = GlobalKey<FormState>();
  final hidePassword = true.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  void signUpUser() {
    RFullScreenLoader.openConfirmationDialog(
        "Verified",
        "You have successfully verified your account",
        "Browse Home",
        false,
        0.5,
        () => Get.offAll(() => const RBottomNavigationScreen()),
        );
    // try {
    // if (!signUpForm.currentState!.validate()) {
    //   return;
    // }
    // } catch (e) {
    //   print(e);
    // } finally {
    //  RFullScreenLoader.stopLoading();
    // }
  }
}
