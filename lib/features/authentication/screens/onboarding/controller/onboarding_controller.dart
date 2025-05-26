import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/onboarding_login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final Rx<int> carouselPageIndex = 0.obs;

  final CarouselSliderController carouselSliderController =
      CarouselSliderController();

  void nextPage() {
    if (carouselPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write("IsFirstTime", false);
      goToLoginScreen();
    } else {
      ++carouselPageIndex.value;
      carouselSliderController.nextPage();
    }
  }

  void goToLoginScreen() {
    Get.offAll(() => const OnBoardingLoginScreen());
  }
}
