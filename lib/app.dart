import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/onboarding/screens/onboarding.dart';
import 'package:ride_clone/utils/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: RAppTheme.lightTheme,
      home: OnBoardingScreen(),
    );
  }
}
