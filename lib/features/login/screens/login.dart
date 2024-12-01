import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/containers/signup_button_google_login_divider.dart';
import 'package:ride_clone/common/widgets/containers/stack_with_image_text.dart';
import 'package:ride_clone/features/login/controller/login_controller.dart';
import 'package:ride_clone/features/login/screens/widgets/login_form.dart';
import 'package:ride_clone/features/signup/screens/signup.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RStackIconText(
              text: "Welcome",
              icon: Icons.waving_hand,
            ),
            const SizedBox(
              height: RSizes.defaultSpace,
            ),
            const RLoginForm(),
            RSignupGoogleLoginWithDivider(
              onPressed: () => controller.loginUser(),
              elevatedButtonText: "Log in",
              text: "Don't have an account? ",
              buttonText: "Sign up",
              textButtonOnPressed: () => Get.offAll(() => const SignupScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
