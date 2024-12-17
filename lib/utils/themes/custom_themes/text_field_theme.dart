import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RTextFieldTheme {
  RTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: RColors.textFormFeildFill,
    prefixIconColor: RColors.grey,
    suffixIconColor: RColors.grey,
    
    labelStyle: const TextStyle(
        fontSize: 16.0, color: RColors.black, fontWeight: FontWeight.w600),
    hintStyle: const TextStyle(
        fontSize: 14.0, color: RColors.grey, fontWeight: FontWeight.w400),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(26),
      borderSide: const BorderSide(width: 1, color: RColors.blue),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(26),
      borderSide: const BorderSide(width: 1, color: RColors.grey),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(26),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    errorStyle: const TextStyle(
        fontSize: 12.0, color: Colors.red, fontWeight: FontWeight.w600),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(26),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
  );
}
