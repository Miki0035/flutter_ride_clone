import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/containers/signup_button_google_login_divider.dart';
import 'package:ride_clone/common/widgets/containers/stack_with_image_text.dart';
import 'package:ride_clone/features/authentication/screens/signup/screens/widgets/sign_up_form.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

import '../../login/screens/login.dart';
import '../controllers/signup_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RStackIconText(
              text: "Create Your Account",
            ),
            const RSignUpForm(),
            const SizedBox(
              height: RSizes.spaceBtwSections,
            ),
            RSignupGoogleLoginWithDivider(
              onPressed: () => controller.signUpUser(),
              elevatedButtonText: "Sign Up",
              text: "Already have an account?",
              buttonText: "Log in",
              textButtonOnPressed: () => Get.offAll(() => const LoginScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
