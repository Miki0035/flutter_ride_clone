import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';

class RBackButton extends StatelessWidget {
  const RBackButton({
    super.key, this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          elevation: 0,
          backgroundColor: RColors.white,
          shape: const CircleBorder()
        ),
        icon: const Image(
          image: AssetImage(RImages.out),
          fit: BoxFit.contain,
          color: RColors.black,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}
