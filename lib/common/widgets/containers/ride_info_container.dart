import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/containers/horizontal_text.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RRideInfoContainer extends StatelessWidget {
  const RRideInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: RColors.lightGrey,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Column(
        children: [
          RHorizontalText(
            label: 'Date & Time',
            value: "16 July 2023, 10:30 PM",
          ),
          RHorizontalText(
            label: 'Driver',
            value: "Jane Cooper",
          ),
          RHorizontalText(
            label: 'Car seats',
            value: "4",
          ),
          RHorizontalText(
            label: 'Payment status',
            value: "Paid",
          ),
        ],
      ),
    );
  }
}
