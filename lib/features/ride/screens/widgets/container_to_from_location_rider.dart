import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/containers/horizontal_row_with_icon_location_text.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RToFromLocationRiderInfo extends StatelessWidget {
  const RToFromLocationRiderInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: RDeviceUtility.getSceenWidth() * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: const Column(
        children: [
          Divider(
            height: 24.0,
            thickness: 2.0,
            color: RColors.lightGrey,
          ),
          RRowWithIconLocationText(
              widthBetween: 12.0,
              image: RImages.to,
              locationName: "1901 Thronridge Cir.Shiloh"),
          Divider(
            height: 24.0,
            thickness: 2.0,
            color: RColors.lightGrey,
          ),
          RRowWithIconLocationText(
              widthBetween: 12.0,
              image: RImages.point,
              locationName: "4041 Parker Rd. Allentown"),
        ],
      ),
    );
  }
}
