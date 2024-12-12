import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RVerticalDivider extends StatelessWidget {
  const RVerticalDivider({
    super.key,
    this.color = RColors.grey,
    this.width = 18.0,
    this.height = 14.0,
  });
  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: VerticalDivider(
        width: 1.0,
        color: color,
        thickness: 1.0,
      ),
    );
  }
}
