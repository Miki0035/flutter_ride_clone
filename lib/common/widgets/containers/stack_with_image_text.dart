import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RStackIconText extends StatelessWidget {
  const RStackIconText({super.key, required this.text, this.icon });

  final String text;

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage(RImages.signupCar),
          fit: BoxFit.cover,
          height: 250,
          width: double.infinity,
        ),
        Positioned(
          bottom: RSizes.defaultSpace,
          left: 0,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: RSizes.defaultSpace),
            child: Row(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: RSizes.fontSizeLg * 1.5,
                      color: RColors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: RSizes.defaultSpace * 0.5,
                ),
                if (icon != null) Icon(icon , color: Colors.yellow[600],)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
