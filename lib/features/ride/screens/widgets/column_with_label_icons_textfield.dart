import 'package:flutter/material.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RCustomLabelIconTextFeild extends StatelessWidget {
  const RCustomLabelIconTextFeild({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.controller,
  });

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String leadingIcon;
  final String trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
              fontSize: RSizes.fontSizeLg, fontWeight: FontWeight.w800),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          decoration: BoxDecoration(
            color: RColors.lightGrey,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Row(
            children: [
              Image(
                image: AssetImage(leadingIcon),
                width: 24.0,
                height: 24.0,
              ),
               Expanded(
                child: TextField(
                  controller: controller,
                  decoration: const  InputDecoration(
                      hintText: "From location",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              Image(
                image: AssetImage(trailingIcon),
                color: RColors.grey,
                width: 24.0,
                height: 24.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
