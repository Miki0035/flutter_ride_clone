import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RRowTextIcon extends StatelessWidget {
  const RRowTextIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Jane Cooper",
          style: TextStyle(
              fontSize: RSizes.fontSizeMd, fontWeight: FontWeight.w600),
        ),
         SizedBox(width: 8.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage(RImages.star),
              width: 12.0,
              height: 12.0,
            ),
            Text(
              "4.9",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: RSizes.fontSizeSm),
            )
          ],
        )
      ],
    );
  }
}
