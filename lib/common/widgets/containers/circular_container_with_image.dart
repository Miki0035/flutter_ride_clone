import 'package:flutter/material.dart';

class RCircularImage extends StatelessWidget {
  const RCircularImage({super.key, required this.image, this.radius = 50.0});

  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: radius,
    );
  }
}
