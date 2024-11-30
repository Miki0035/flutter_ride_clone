import 'package:flutter/material.dart';
import 'package:ride_clone/utils/themes/custom_themes/appbar_theme.dart';
import 'package:ride_clone/utils/themes/custom_themes/text_field_theme.dart';

class RAppTheme {
  RAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'PlusJakartaSans',
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: RAppBarTheme.lightAppBarTheme,
      inputDecorationTheme: RTextFieldTheme.lightInputDecorationTheme);
}
