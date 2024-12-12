import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/buttons/button_with_image_icon.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';

class RRiderInformationContainer extends StatelessWidget {
  const RRiderInformationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.0),
            topRight: Radius.circular(14.0),
          ),
          color: RColors.white),
      child: Column(
        children: [
          // Ride Info headline
          Container(
            height: 48.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
            ),
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(width: 1.0, color: RColors.veryLightGrey))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Ride Information"),
                RButtonImage(
                  onPressed: () {},
                  image: RImages.close,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
