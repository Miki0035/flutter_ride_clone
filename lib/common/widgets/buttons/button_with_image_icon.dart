import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RButtonImage extends StatelessWidget {
  const RButtonImage({
    super.key,
    this.onPressed,
    required this.image,
    this.buttonBackgroundColor = RColors.white,
    this.imageColor = RColors.black,
    this.width = 80.0,
    this.height = 80.0,
  });

  final VoidCallback? onPressed;
  final String image;
  final Color? buttonBackgroundColor;
  final Color? imageColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: buttonBackgroundColor,
          borderRadius: BorderRadius.circular(50.0)),
      child: IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          elevation: 0,
          backgroundColor: buttonBackgroundColor,
          shape: const CircleBorder(),
        ),
        icon: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
          color: imageColor,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}
