import 'package:flutter/material.dart';

class RCircularImage extends StatelessWidget {
  const RCircularImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 50.0,
    );
  }
}
