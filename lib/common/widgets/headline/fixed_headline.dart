import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RHeadLine extends StatelessWidget {
  const RHeadLine({
    super.key,
    required this.image,
    required this.title,
    this.colorText = "",
    this.subtitle="",
    required this.width,
    required this.height,
    this.textAlign = TextAlign.center
  });

  final TextAlign textAlign;

  final String image;
  final String title;
  final String colorText;
  final String subtitle;
  final double width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: RSizes.defaultSpace,
        ),
        Text.rich(
          textAlign: textAlign,
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
                  fontSize:  RSizes.fontSizeLg * 1.5,
                  color: RColors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: RSizes.defaultSpace,
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
