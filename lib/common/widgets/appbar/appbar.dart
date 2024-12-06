import 'package:flutter/material.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

class RAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RAppBar(
      {super.key, this.actions, this.showBackArrow = false, this.title});

  final List<Widget>? actions;
  final bool showBackArrow;
  final Widget? title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: AppBar(
        title: title,
        automaticallyImplyLeading: showBackArrow,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(RDeviceUtility.getAppBarHeight());
}
