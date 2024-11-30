import 'package:flutter/material.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar({super.key, required this.actions, this.showBackArrow = false});

  final List<Widget> actions;
  final bool showBackArrow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        automaticallyImplyLeading: showBackArrow,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(RDeviceUtility.getAppBarHeight());
}
