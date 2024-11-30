import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RSmoothIndicatorButtons extends StatelessWidget {
  const RSmoothIndicatorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: 0,
      count: 3,
      onDotClicked: (index) {},
      effect: const ExpandingDotsEffect(),
    );
  }
}
