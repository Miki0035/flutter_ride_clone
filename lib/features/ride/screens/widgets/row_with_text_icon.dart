import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RRowTextIcon extends StatelessWidget {
  const RRowTextIcon({
    super.key,
    this.centerText = false,
    this.fontSize = RSizes.fontSizeMd,
    this.ratingFontSize = RSizes.fontSizeSm,
    this.iconWidth = 12.0,
    this.iconHeight = 12.0,
    required this.driverName,
    required this.ratings,
  });

  final String driverName;
  final double ratings;
  final bool centerText;
  final double fontSize;
  final double iconWidth;
  final double iconHeight;

  final double ratingFontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          centerText ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Text(
          driverName,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: const AssetImage(RImages.star),
              width: iconWidth,
              height: iconHeight,
            ),
            Text(
              ratings.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: ratingFontSize),
            )
          ],
        )
      ],
    );
  }
}
