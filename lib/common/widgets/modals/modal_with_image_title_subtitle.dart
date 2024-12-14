import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';
import 'package:ride_clone/utils/device/device_utility.dart';
import 'package:ride_clone/utils/popups/full_screen_loader.dart';

class RModalImageTitleSubtitle extends StatelessWidget {
  const RModalImageTitleSubtitle({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.firstButtonText,
    required this.showSecondButton,
    required this.firstButtonOnPress,
  });

  final String title;
  final String subtitle;
  final String image;
  final String firstButtonText;
  final bool showSecondButton;

  final VoidCallback firstButtonOnPress;

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
            !showSecondButton
                // when there is only one button like sign up confirmation
                ? RButton(
                    onPressed: () => Get.offAll(() => firstButtonOnPress),
                    text: firstButtonText)
                :
                // when there is two button like ride confirmation screen

                RButton(onPressed: firstButtonOnPress, text: firstButtonText),

            RButton(
                backgroundColor: RColors.veryLightGrey,
                color: RColors.black,
                onPressed: () {
                  RFullScreenLoader.stopLoading();
                  Get.offAll(() => const RBottomNavigationScreen());
                },
                text: "Back Home")
          ],
        ),
      ),
    );
  }
}
