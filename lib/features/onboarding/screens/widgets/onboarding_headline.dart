import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class ROnBoardingHeadline extends StatelessWidget {
  const ROnBoardingHeadline(
      {super.key,
      required this.image,
      required this.title,
      required this.colorText,
      required this.subtitle,
      required this.width});

  final String image;
  final String title;
  final String colorText;
  final String subtitle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          width: width,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: RSizes.defaultSpace,
        ),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            children: [
              TextSpan(
                text: title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: RSizes.fontSizeLg * 1.5,
                    color: RColors.black),
              ),
              TextSpan(
                text: colorText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: RSizes.fontSizeLg * 1.5,
                  color: RColors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: RSizes.spaceBtwItems,
        ),
        Text(subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: RSizes.fontSizeMd,
              color: RColors.grey,
            ))
      ],
    );
  }
}
