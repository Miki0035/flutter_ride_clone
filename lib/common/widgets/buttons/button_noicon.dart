import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RButton extends StatelessWidget {
  const RButton({
    super.key,
    required this.onPressed,
    required this.text, 
    this.backgroundColor = RColors.blue,
    this.elevation = 0
  });
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 24.0),
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(14.0),
          elevation: elevation,
          backgroundColor: RColors.blue,
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: RColors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
