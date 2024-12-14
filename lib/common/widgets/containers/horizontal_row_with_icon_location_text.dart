import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RRowWithIconLocationText extends StatelessWidget {
  const RRowWithIconLocationText({
    super.key,
    required this.image,
    required this.locationName,
    this.widthBetween = 4.0,
  });
  final String image;
  final String locationName;
  final double widthBetween;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          width: 32.0,
          height: 32.0,
        ),
        SizedBox(
          width: widthBetween,
        ),
        Text(
          locationName,
          style: const TextStyle(
              fontSize: RSizes.fontSizeMd, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
