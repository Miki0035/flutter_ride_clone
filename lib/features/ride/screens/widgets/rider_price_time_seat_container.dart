import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/containers/horizontal_text.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RRiderPriceTimeSeat extends StatelessWidget {
  const RRiderPriceTimeSeat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;
    return Container(
      width: RDeviceUtility.getSceenWidth() * 0.95,
      padding: const EdgeInsets.symmetric(
        horizontal: 42.0,
      ),
      decoration: BoxDecoration(
        color: RColors.brightBlue,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        children: [
          RHorizontalText(
            label: 'Ride Price',
            value: "\$${controller.selectedDriver.value.price}",
            lableFontSize: RSizes.fontSizeLg,
            valueFontSize: RSizes.fontSizeLg,
            lableColor: RColors.black,
            valueColor: RColors.green,
          ),
          const Divider(
            thickness: 2.0,
            color: RColors.white,
          ),
          RHorizontalText(
            label: 'Pickup Time',
            value: "${controller.selectedDriver.value.pickupTime} Min",
            lableFontSize: RSizes.fontSizeLg,
            valueFontSize: RSizes.fontSizeLg,
            lableColor: RColors.black,
          ),
          const Divider(
            thickness: 2.0,
            color: RColors.white,
          ),
          RHorizontalText(
            label: 'Car Seats',
            value: "${controller.selectedDriver.value.carSeats} seats",
            lableFontSize: RSizes.fontSizeLg,
            valueFontSize: RSizes.fontSizeLg,
            lableColor: RColors.black,
          ),
        ],
      ),
    );
  }
}
