import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/signup/controllers/signup_controller.dart';

class RSignUpForm extends StatelessWidget {
  const RSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    return Form(
      key: controller.signUpForm,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            // User name
            TextFormField(
              controller: controller.username,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  size: 28.0,
                ),
                hintText: 'Enter name',
                labelText: "Name",
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            // Email
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: 28.0,
                ),
                hintText: 'example@gmail.com',
                labelText: "Email",
              ),
            ),

            const SizedBox(
              height: 24.0,
            ),
            // Password
            Obx(
              () => TextFormField(
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    size: 28.0,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(
                      controller.hidePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: 28.0,
                    ),
                  ),
                  hintText: 'Enter password',
                  labelText: "Password",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}