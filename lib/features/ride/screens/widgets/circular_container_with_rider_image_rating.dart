import 'package:flutter/material.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/features/ride/screens/widgets/row_with_text_icon.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RCircularRiderImageWithRating extends StatelessWidget {
  const RCircularRiderImageWithRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 48.0,
            backgroundImage:
                AssetImage(controller.selectedDriver.value.profilePicture),
          ),
          const SizedBox(
            height: 8.0,
          ),
          RRowTextIcon(
            centerText: true,
            fontSize: RSizes.fontSizeLg * 1.05,
            iconWidth: 18.0,
            iconHeight: 18.0,
            ratingFontSize: RSizes.fontSizeLg,
            driverName: controller.selectedDriver.value.fullName,
            ratings: controller.selectedDriver.value.rating,
          )
        ],
      ),
    );
  }
}
