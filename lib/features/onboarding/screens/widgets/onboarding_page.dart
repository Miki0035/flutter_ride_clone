import 'package:flutter/material.dart';
import 'package:ride_clone/features/onboarding/screens/widgets/onboarding_headline.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.colorText = "",
  });

  final String image;
  final String title;
  final String subtitle;
  final String colorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: ROnBoardingHeadline(
        image: image,
        title: title,
        colorText: colorText,
        subtitle: subtitle,
        width: RDeviceUtility.getSceenWidth() * 0.7,
      ),
    );
  }
}
