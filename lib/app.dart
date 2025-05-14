import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/utils/themes/theme.dart';
import 'features/authentication/screens/onboarding/screens/onboarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: true,
      theme: RAppTheme.lightTheme,
      home: OnBoardingScreen(),
    );
  }
}
