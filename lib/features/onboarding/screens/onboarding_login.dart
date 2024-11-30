import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/containers/signup_button_google_login_divider.dart';
import 'package:ride_clone/common/widgets/headline/fixed_headline.dart';
import 'package:ride_clone/features/login/screens/login.dart';
import 'package:ride_clone/features/signup/screens/signup.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class OnBoardingLoginScreen extends StatelessWidget {
  const OnBoardingLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RHeadLine(
            image: RImages.signupCar,
            title: "Let's get started",
            subtitle: "Sign up or log in to find out the best car for you",
            width: double.infinity,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(RSizes.defaultSpace),
            child: RSignupGoogleLoginWithDivider(
              onPressed: () => Get.to(const SignupScreen()),
              text: "Already have an account?",
              elevatedButtonText: "Sign Up",
              buttonText: "Log in",
              textButtonOnPressed: () => Get.to(() => const LoginScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
