import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/common/widgets/containers/circular_avatar_with_text_below.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/features/ride/screens/widgets/container_to_from_location_rider.dart';
import 'package:ride_clone/features/ride/screens/widgets/rider_information_with_close_icon.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RTrackRider extends StatelessWidget {
  const RTrackRider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;
    return Container(
      width: RDeviceUtility.getSceenWidth(),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
          color: RColors.white),
      child: Column(
        children: [
          RHorizontalRideInfoTextWithButton(
            headline: "Arriving in",
            time: controller.selectedDriver.value.pickupTime,
            showCloseIcon: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RCircularAvatarWithTextBelow(
                  image: controller.selectedDriver.value.profilePicture,
                  fullname: controller.selectedDriver.value.fullName),
              const Image(
                image: AssetImage(RImages.blackCar),
                width: 155.0,
                height: 155.0,
              )
            ],
          ),
          const RToFromLocationRiderInfo(),
          RButton(
              onPressed: () =>
                  Get.offAll(() => const RBottomNavigationScreen()),
              text: "Back Home")
        ],
      ),
    );
  }
}
