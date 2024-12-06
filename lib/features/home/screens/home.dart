import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/back_button_icon.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(
          title: const Text(
            "Welcome John",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: RSizes.fontSizeLg * 1.3),
          ),
          actions: [
            RBackButton(
              onPressed: () {},
            )
          ]),
    );
  }
}
