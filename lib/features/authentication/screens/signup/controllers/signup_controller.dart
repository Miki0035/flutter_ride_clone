import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/data/authentication_repository.dart';
import 'package:ride_clone/data/user_repository.dart';
import 'package:ride_clone/features/authentication/models/user_model.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  final hidePassword = true.obs;
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> signUpUser() async {
    try {
      if (!signUpFormKey.currentState!.validate()) {
        return;
      }
      RFullScreenLoader.openLoadingDialog(
          'Creating your account...', RImages.loaderAnimation);

      final userCredential = await AuthenticationRepository.instance
          .signUpWithUserNameEmailPassword(
              email.text.trim(), username.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.uid,
          username: username.text.trim(),
          email: email.text.trim());

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      RFullScreenLoader.stopLoading();
      RFullScreenLoader.openConfirmationDialog(
        "Account Created",
        "You account has been successfully created",
        "Continue",
        false,
        0.5,
        () => Get.offAll(() => const RBottomNavigationScreen()),
      );
      // Get.to(() => const RBottomNavigationScreen());
    } catch (e) {
      RFullScreenLoader.stopLoading();
      throw 'Something went wrong. Please try again';
    }

    // else {
    //   RFullScreenLoader.openConfirmationDialog(
    //     "Verified",
    //     "You have successfully verified your account",
    //     "Browse Home",
    //     false,
    //     0.5,
    //     () => Get.offAll(() => const RBottomNavigationScreen()),
    //   );
    // }
  }
}
