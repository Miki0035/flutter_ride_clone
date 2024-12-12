import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';

class RSearchContainer extends StatelessWidget {
  const RSearchContainer({
    super.key, this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: RColors.white,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(color: RColors.grey)
        ),
        child: const Row(
          children: [
            Image(
              fit: BoxFit.fill,
              image: AssetImage(RImages.search),
              width: 32.0,
              height: 32.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Where do you want to go?",
                style: TextStyle(color: RColors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
