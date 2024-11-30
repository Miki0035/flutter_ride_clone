import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RDivider extends StatelessWidget {
  const RDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: RColors.grey,
            thickness: 1,
            indent: 10,
            endIndent: 5,
          ),
        ),
        Text('Or' , style: TextStyle(fontSize: 18, color: RColors.grey, fontWeight: FontWeight.w600),),
        Flexible(
          child: Divider(
            color: RColors.grey,
            thickness: 1,
            indent: 10,
            endIndent: 5,
          ),
        )
      ],
    );
  }
}
