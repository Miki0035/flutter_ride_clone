import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RProfileTextFeild extends StatelessWidget {
  const RProfileTextFeild({
    super.key,
    this.onPressed,
    required this.labelText,
    required this.value,
  });
  final VoidCallback? onPressed;
  final String labelText;
  final String value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: const TextStyle(
                  color: RColors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: RSizes.fontSizeMd),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: RColors.textFormFeildFill,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                        fontSize: RSizes.fontSizeLg,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.edit_square,
                    size: 32.0,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
