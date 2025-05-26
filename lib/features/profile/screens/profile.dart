import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/containers/circular_container_with_image.dart';
import 'package:ride_clone/features/authentication/controllers/user_controller.dart';
import 'package:ride_clone/features/profile/screens/widgets/custom_textfield_with_label_and_value.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const RAppBar(
        title: "Your Profile",
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: RCircularImage(image: RImages.profileImage),
              ),
              const SizedBox(
                height: RSizes.spaceBtwSections,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: RColors.white,
                    borderRadius: BorderRadius.circular(14.0)),
                child:  Column(
                  children: [
                    RProfileTextFeild(
                      labelText: "User Name",
                      value: controller.user.value.username,
                    ),
                    // RProfileTextFeild(
                    //   labelText: "Last Name",
                    //   value: "JS Mastery",
                    // ),
                    RProfileTextFeild(
                      labelText: "Email",
                      value: controller.user.value.email,
                    ),
                    const RProfileTextFeild(
                      labelText: "Email Status",
                      value: "verified",
                    ),
                    // RProfileTextFeild(
                    //   labelText: "Phone Number",
                    //   value: "+554423435",
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
