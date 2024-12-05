import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/modals/modal_with_image_title_subtitle.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RFullScreenLoader {
  static void openLoadingDialog(String title, String subtitle) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: true,
        child: Center(
          child: Container(
            width: RDeviceUtility.getSceenWidth() * 0.9,
            height: RDeviceUtility.getScreenHeight() * 0.5,
            decoration: BoxDecoration(
              color: RColors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child:
                const RModalImageTitleSubtitle(
                    image: RImages.greenCheck,
                    title: 'Verified!',
                    subtitle: 'You have successfully verified your account')
            ),
          ),
        ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
