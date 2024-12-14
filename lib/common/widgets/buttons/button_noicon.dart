import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RButton extends StatelessWidget {
  const RButton({
    super.key,
    required this.onPressed,
    required this.text, 
    this.backgroundColor = RColors.blue,
    this.color = RColors.white,
    this.elevation = 0
  });
  final Color backgroundColor;
  final Color color;

  final VoidCallback? onPressed;
  final String text;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(14.0),
          elevation: elevation,
          backgroundColor: backgroundColor,
        ),
        child: Text(
          text,
          style:  TextStyle(
              color: color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
