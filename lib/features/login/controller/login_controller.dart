import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final hidePassword = true.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser() {
    if (!loginFormKey.currentState!.validate()) {
      return;
    } else {
      Get.offAll(() => const RBottomNavigationScreen());
    }
  }
}
