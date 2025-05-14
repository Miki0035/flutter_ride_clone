import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/utils/constants/colors.dart';

import '../../controller/onboarding_controller.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Row(mainAxisSize: MainAxisSize.min, children: [
      for (int i = 0; i < 3; i++)
        Obx(
          () => Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
              color: i == controller.carouselPageIndex.value
                  ? RColors.blue
                  : RColors.grey,
              borderRadius: BorderRadius.circular(400.0),
            ),
          ),
        )
    ]);
  }
}
