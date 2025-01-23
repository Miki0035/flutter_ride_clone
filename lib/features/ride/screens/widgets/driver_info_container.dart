import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/features/ride/screens/widgets/circular_container_with_rider_image_rating.dart';
import 'package:ride_clone/features/ride/screens/widgets/container_to_from_location_rider.dart';
import 'package:ride_clone/features/ride/screens/widgets/rider_information_with_close_icon.dart';
import 'package:ride_clone/features/ride/screens/widgets/rider_price_time_seat_container.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/device/device_utility.dart';
import 'package:ride_clone/utils/popups/full_screen_loader.dart';

class RRiderInformationContainer extends StatelessWidget {
  const RRiderInformationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;
    return Expanded(
      child: Container(
        width: RDeviceUtility.getSceenWidth(),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
            color: RColors.white),
        child: SingleChildScrollView(
          child: Column(children: [
            // Ride Info headline
            const RHorizontalRideInfoTextWithButton(),
            const RCircularRiderImageWithRating(),
            const RRiderPriceTimeSeat(),
            const RToFromLocationRiderInfo(),
            RButton(
                onPressed: () => RFullScreenLoader.openConfirmationDialog(
                        "Booking Placed successfully",
                        "Thank you for your booking! Your reservation has been successfully placed. Please proceed with your trip",
                        "Go Track",
                        true,
                        0.7, () {
                      RFullScreenLoader.stopLoading();
                      controller.currentIndex.value++;
                    }),
                text: "Confirm Ride")
          ]),
        ),
      ),
    );
  }
}
