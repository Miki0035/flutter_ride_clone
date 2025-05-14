import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/button_with_image_icon.dart';
import 'package:ride_clone/common/widgets/containers/main_vertical_container.dart';
import 'package:ride_clone/common/widgets/flutter_map.dart';
import 'package:ride_clone/data/authentication_repository.dart';
import 'package:ride_clone/features/authentication/controllers/user_controller.dart';
import 'package:ride_clone/features/home/screens/widgets/search_container.dart';
import 'package:ride_clone/features/ride/screens/ride.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());

    return Scaffold(
      appBar:
          RAppBar(title: "Welcome ${controller.user.value.username}", actions: [
        RButtonImage(
          image: RImages.out,
          onPressed: AuthenticationRepository.instance.logout,
        )
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RSearchContainer(
                onTap: () => Get.to(() => const RideScreen()),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Your Current Location",
                style: TextStyle(
                    fontSize: RSizes.fontSizeLg, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const RFlutterMap(
                height: 250,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Recent Rides",
                style: TextStyle(
                    fontSize: RSizes.fontSizeLg, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const RVerticalContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
