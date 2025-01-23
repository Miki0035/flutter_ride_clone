import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ride_clone/features/login/screens/login.dart';
import 'package:ride_clone/features/onboarding/screens/onboarding.dart';

class DataRepository extends GetxController {
  static DataRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    if (deviceStorage.read('IsFirstTime') != true) {
      deviceStorage.writeIfNull('IsFirstTime', true);
      Get.offAll(() => OnBoardingScreen());
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }
}
