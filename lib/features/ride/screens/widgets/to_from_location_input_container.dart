import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/features/ride/screens/widgets/column_with_label_icons_textfield.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RRideToFromLocationInputContainer extends StatelessWidget {
  const RRideToFromLocationInputContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;
    return Column(
      children: [
        RCustomLabelIconTextFeild(
          controller: controller.fromLocation,
          labelText: "From",
          hintText: "From Location",
          leadingIcon: RImages.point,
          trailingIcon: RImages.target,
        ),
        const SizedBox(
          height: RSizes.defaultSpace,
        ),
        RCustomLabelIconTextFeild(
          controller: controller.toLocation,
          labelText: "To",
          hintText: "To Location",
          leadingIcon: RImages.point,
          trailingIcon: RImages.map,
        ),
        RButton(onPressed: () => controller.selectRider(), text: "Find Now")
      ],
    );
  }
}
