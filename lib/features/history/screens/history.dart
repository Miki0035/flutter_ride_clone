import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/containers/main_vertical_container.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(
        title: "Popular Car",
        actions: [
          TextButton.icon(
            onPressed: () {},
            iconAlignment: IconAlignment.end,
            label: const Text(
              "Ascending",
              style:
                  TextStyle(color: RColors.blue, fontWeight: FontWeight.w700),
            ),
            icon: const Image(
              image: AssetImage(RImages.downArrow),
              color: RColors.blue,
              width: 24.0,
              height: 24.0,
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              RVerticalContainer(),
              SizedBox(
                height: RSizes.spaceBtwSections,
              ),
              RVerticalContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
