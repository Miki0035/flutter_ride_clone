import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/modals/modal_with_image_title_subtitle.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

import '../../common/widgets/loaders/animation_loader.dart';

class RFullScreenLoader {
  static void openConfirmationDialog(
    String title,
    String subtitle,
    String buttonText,
    bool showSecondButton,
    double modalHeight,
    VoidCallback firstButtonOnPress,
  ) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: true,
        child: Center(
          child: Container(
            width: RDeviceUtility.getSceenWidth() * 0.9,
            height: RDeviceUtility.getScreenHeight() * modalHeight,
            decoration: BoxDecoration(
              color: RColors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: RModalImageTitleSubtitle(
              image: RImages.greenCheck,
              title: title,
              subtitle: subtitle,
              firstButtonText: buttonText,
              showSecondButton: showSecondButton,
              firstButtonOnPress: firstButtonOnPress,
            ),
          ),
        ),
      ),
    );
  }

  static void openLoadingDialog(String text, String animationImage) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
                child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  RAnimationLoaderWidget(
                      text: text, animationImage: animationImage),
                ],
              ),
            )));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
