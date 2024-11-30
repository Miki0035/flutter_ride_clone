import 'package:flutter/material.dart';

class RIconTextButton extends StatelessWidget {
  const RIconTextButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.icon,
    required this.borderColor,
    required this.textColor,
    this.elevation = 0
  });

  final Color backgroundColor;
  final String text;
  final Widget icon;
  final Color borderColor;
  final Color textColor;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 18.0),
      padding: const EdgeInsets.all(14.0),
      child: TextButton.icon(
        icon: icon,
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 1, color: borderColor),
          padding: const EdgeInsets.all(14.0),
          elevation: elevation,
          backgroundColor: backgroundColor,
        ),
        label: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
