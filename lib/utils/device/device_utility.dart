import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RDeviceUtility {
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getSceenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

   static double getAppBarHeight() {
    return kToolbarHeight;
  }
}
