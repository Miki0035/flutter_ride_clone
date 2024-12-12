import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/flutter_map.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RHorizontalContainerTwoColumn extends StatelessWidget {
  const RHorizontalContainerTwoColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: RFlutterMap(
            height: 100.00,
            width: 100.00,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                // Point
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(RImages.to),
                      width: 32.0,
                      height: 32.0,
                    ),
                    Text(
                      "1901 Thronridge Cir.Shiloh",
                      style: TextStyle(
                          fontSize: RSizes.fontSizeMd,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),

                SizedBox(
                  height: 8.0,
                ),

                // Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(RImages.point),
                      width: 32.0,
                      height: 32.0,
                    ),
                    Text(
                      "4041 Parker Rd. Allentown",
                      style: TextStyle(
                          fontSize: RSizes.fontSizeMd,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
