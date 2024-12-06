import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: RAppBar(
      title: Text(
        "Your Profile",
        style: TextStyle(
            fontWeight: FontWeight.w800, fontSize: RSizes.fontSizeLg * 1.3),
      ),
    ));
  }
}
