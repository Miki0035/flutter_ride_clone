import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RAnimationLoaderWidget extends StatelessWidget {
  const RAnimationLoaderWidget(
      {super.key,
      required,
      required this.text,
      required this.animationImage,
      this.showAction = false,
      this.actionText,
      this.onActionPressed});

  final String text, animationImage;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            animationImage,
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          const SizedBox(
            height: RSizes.defaultSpace,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: RSizes.fontSizeLg * 1.2,
              fontWeight: FontWeight.w500,
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
