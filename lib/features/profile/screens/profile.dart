import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/containers/circular_container_with_image.dart';
import 'package:ride_clone/features/profile/screens/widgets/profile_edit_textfield.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppBar(
        title: Text(
          "Your Profile",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: RSizes.fontSizeLg * 1.3),
        ),
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
                  borderRadius: BorderRadius.circular(14.0)
                ),
                child: const Column(
                  children: [
                    RProfileTextFeild(
                      labelText: "First Name",
                      value: "Martin",
                    ),
                    RProfileTextFeild(
                      labelText: "Last Name",
                      value: "JS Mastery",
                    ),
                    RProfileTextFeild(
                      labelText: "Email",
                      value: "maring@gmail.com",
                    ),
                    RProfileTextFeild(
                      labelText: "Email Status",
                      value: "status",
                    ),
                    RProfileTextFeild(
                      labelText: "Phone Number",
                      value: "+554423435",
                    ),
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
