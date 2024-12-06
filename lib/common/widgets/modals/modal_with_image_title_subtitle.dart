import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RModalImageTitleSubtitle extends StatelessWidget {
  const RModalImageTitleSubtitle({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(RSizes.defaultSpace),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              width: RDeviceUtility.getSceenWidth() * 0.35,
              height: 100.0,
            ),
            const SizedBox(
              height: RSizes.defaultSpace,
            ),
            //Title
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: "PlusJakartaSans",
                  decoration: TextDecoration.none,
                  color: RColors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: RSizes.fontSizeLg * 1.5),
            ),
            const SizedBox(
              height: 12.0,
            ),
            // Subtitle
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: RColors.grey,
                  fontFamily: "PlusJakartaSans",
                  decoration: TextDecoration.none,
                  fontSize: RSizes.fontSizeLg,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 12.0,
            ),
            RButton(
                onPressed: () => Get.offAll(() =>  const RBottomNavigationScreen()),
                text: 'Browse Home')
          ],
        ),
      ),
    );
  }
}
