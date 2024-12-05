import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF).withOpacity(0.9),
      appBar: RAppBar(actions: [
        SizedBox(
          width: 80,
          height: 80,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: RColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0)),
            ),
            child: const Image(
              image: AssetImage(RImages.out),
              fit: BoxFit.contain,
              color: RColors.black,
              width: 30,
              height: 30,
            ),
          ),
        )
      ]),
    );
  }
}
