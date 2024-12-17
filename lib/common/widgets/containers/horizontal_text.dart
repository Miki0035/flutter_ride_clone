import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RHorizontalText extends StatelessWidget {
  const RHorizontalText({
    super.key,
    required this.label,
    required this.value,
    this.lableColor = RColors.grey,
    this.valueColor = RColors.black,
    this.lableFontSize = RSizes.fontSizeMd,
    this.valueFontSize = RSizes.fontSizeMd,
  });
  final String label;
  final String value;
  final Color lableColor;
  final double lableFontSize;
  final double valueFontSize;
  final Color valueColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                color: lableColor,
                fontWeight: FontWeight.w600,
                fontSize: lableFontSize),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: valueFontSize,
                fontWeight: FontWeight.bold,
                color: valueColor),
          ),
        ],
      ),
    );
  }
}
