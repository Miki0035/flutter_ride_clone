import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/buttons/button_with_image_icon.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RHorizontalRideInfoTextWithButton extends StatelessWidget {
  const RHorizontalRideInfoTextWithButton({
    super.key,
    this.headline = "Ride Information",
    this.showCloseIcon = true,
    this.time = "",
  });
  final String headline;
  final String time;
  final bool showCloseIcon;
  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;
    return Container(
      height: 64.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: RColors.veryLightGrey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: headline,
                  style: const TextStyle(
                      fontSize: RSizes.fontSizeLg * 1.2,
                      fontWeight: FontWeight.w800),
                ),
                TextSpan(
                  text: time.isNotEmpty ? "  $time Mins" : "",
                  style: const TextStyle(
                      fontSize: RSizes.fontSizeLg * 1.2,
                      fontWeight: FontWeight.w800,
                      color: RColors.green),
                )
              ],
            ),
          ),
          if (showCloseIcon)
            RButtonImage(
              onPressed: () => controller.currentIndex.value--,
              image: RImages.close,
            )
        ],
      ),
    );
  }
}
