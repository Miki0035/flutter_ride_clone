import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/button_with_image_icon.dart';
import 'package:ride_clone/common/widgets/flutter_map.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RideScreen extends StatelessWidget {
  const RideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RideController());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: RAppBar(
        leading: RButtonImage(
          image: RImages.backArrow,
          onPressed: () => Get.back(),
        ),
        title: "Ride",
      ),
      body: Stack(
        children: [
          const RFlutterMap(height: double.infinity),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: controller.currentIndex.value == 0
                  ? RDeviceUtility.getScreenHeight() / 2 - 100
                  : RDeviceUtility.getScreenHeight() / 2 - 180,
              right: 12,
              child: const RButtonImage(
                width: 60.0,
                height: 60.0,
                image: RImages.target,
                imageColor: RColors.white,
                buttonBackgroundColor: RColors.green,
              ),
            ),
          )
        ],
      ),
      bottomSheet: Obx(
        () => Container(
          width: double.infinity,
          height: controller.currentIndex.value == 0 ? 350 : 480,
          decoration: const BoxDecoration(
              color: RColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.0),
                topRight: Radius.circular(18.0),
              )),
          child: Padding(
            padding: controller.currentIndex.value == 0
                ? const EdgeInsets.all(24.0)
                : const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [controller.screens[controller.currentIndex.value]],
            ),
          ),
        ),
      ),
    );
  }
}