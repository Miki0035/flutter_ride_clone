import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/login/controller/login_controller.dart';
import 'package:ride_clone/utils/constants/sizes.dart';
import 'package:ride_clone/utils/validators/validator.dart';

class RLoginForm extends StatelessWidget {
  const RLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.instance;
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            // Email
            TextFormField(
              controller: controller.email,
              validator: (value) => RValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email_outlined,
                  size: RSizes.iconMd,
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
                validator: (value) => RValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    size: RSizes.iconMd,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(
                      controller.hidePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size:  RSizes.iconMd,
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
