import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ride_clone/features/bottom_navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../features/authentication/screens/login/screens/login.dart';
import '../features/authentication/screens/onboarding/screens/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // GET AUTHENTICATED USER
  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
    super.onReady();

  }

  screenRedirect() async {
    print(deviceStorage.read("IsFirstTime"));

    final user = _auth.currentUser;
    if (user != null) {
      if (!user.emailVerified) {
        Get.offAll(() => const RBottomNavigationScreen());
      }
      // else {
      //   Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      // }
    } else {
      deviceStorage.writeIfNull('IsFirstTime', true);
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(() => OnBoardingScreen());
    }
  }

  // EMAIL & PASSWORD SIGN-IN
  Future<UserCredential> loginWithEmailAndPassword(String email,
      String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // SIGN-UP WITH EMAIL, USERNAME , PASSWORD
  Future<UserCredential> signUpWithUserNameEmailPassword(String email,
      String username, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  // LOGOUT USER
  Future<void> logout() async {
    try {
      await _auth.signOut();
      screenRedirect();
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}
