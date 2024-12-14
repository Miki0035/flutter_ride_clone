import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RCircularAvatarWithTextBelow extends StatelessWidget {
  const RCircularAvatarWithTextBelow({
    super.key,
    required this.image,
    required this.fullname,
  });

  final String image;
  final String fullname;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32.0,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          fullname,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: RSizes.fontSizeLg,
          ),
        )
      ],
    );
  }
}
