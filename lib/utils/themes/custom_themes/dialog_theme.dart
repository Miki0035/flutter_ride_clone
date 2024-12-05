import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RDialogTheme {
  RDialogTheme._();

  // light mode
  static const lightDialogTheme = DialogTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
          fontFamily: 'PlusJakartaSans',
          color: RColors.black,
          fontWeight: FontWeight.w800,
          fontSize: RSizes.fontSizeLg * 1.5),
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent);
}
