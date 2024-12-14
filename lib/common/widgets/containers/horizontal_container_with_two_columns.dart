import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/containers/horizontal_row_with_icon_location_text.dart';
import 'package:ride_clone/common/widgets/flutter_map.dart';
import 'package:ride_clone/utils/constants/images.dart';

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
                RRowWithIconLocationText(
                    image: RImages.to,
                    locationName: "1901 Thronridge Cir.Shiloh"),

                SizedBox(
                  height: 8.0,
                ),

                // Location
                RRowWithIconLocationText(
                    image: RImages.point,
                    locationName: "4041 Parker Rd. Allentown"),
              ],
            ))
      ],
    );
  }
}
