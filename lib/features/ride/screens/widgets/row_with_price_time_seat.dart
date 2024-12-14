import 'package:flutter/material.dart';
import 'package:ride_clone/features/ride/screens/widgets/vertical_divider.dart';
import 'package:ride_clone/utils/constants/images.dart';

class RRowPriceTimeSeat extends StatelessWidget {
  const RRowPriceTimeSeat({
    super.key,
    required this.price,
    required this.time,
    required this.seats,
  });
  final double price;
  final String time;
  final String seats;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Image(
            image: AssetImage(RImages.dollar),
            width: 14.0,
            height: 14.0,
          ),
          Text(
            "\$$price",
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 12.0,
            ),
          ),
          const RVerticalDivider(),
          Text(
            "$time min",
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
          ),
          const RVerticalDivider(),
          Text(
            "$seats seats",
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
          )
        ],
      ),
    );
  }
}
