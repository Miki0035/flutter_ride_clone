import 'package:flutter/material.dart';

class RImageIconButton extends StatelessWidget {
  const RImageIconButton(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.color});

  final VoidCallback onPressed;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
          backgroundColor: color, shape: const CircleBorder()),
      icon: Image(
        image: AssetImage(image),
        width: 32.0,
        height: 32.0,
      ),
    );
  }
}
