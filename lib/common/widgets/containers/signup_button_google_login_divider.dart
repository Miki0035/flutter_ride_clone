import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/buttons/button_icon_text.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/common/widgets/divider/divider_with_text.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RSignupGoogleLoginWithDivider extends StatelessWidget {
  const RSignupGoogleLoginWithDivider(
      {super.key,
      required this.onPressed,
      required this.textButtonOnPressed,
      required this.elevatedButtonText,
      required this.text,
      required this.buttonText});

  final VoidCallback onPressed;
  final VoidCallback textButtonOnPressed;
  final String elevatedButtonText;
  final String text;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RButton(
          onPressed: onPressed,
          text: elevatedButtonText,
          elevation: 2,
        ),
        const SizedBox(
          height: RSizes.spaceBtwItems,
        ),
        const RDivider(),
        const RIconTextButton(
          backgroundColor: RColors.white,
          icon: Image(
            image: AssetImage(RImages.google),
            width: 30,
            height: 30,
          ),
          text: 'Log in with Google',
          textColor: RColors.black,
          borderColor: RColors.grey,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(
                  color: RColors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: textButtonOnPressed,
              child: Text(
                buttonText,
                style: const TextStyle(
                    color: RColors.blue,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
