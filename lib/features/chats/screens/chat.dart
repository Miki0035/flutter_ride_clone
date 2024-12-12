import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/button_with_image_icon.dart';
import 'package:ride_clone/features/login/screens/login.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(
        title: "Chat List",
        actions: [
          RButtonImage(
            image: RImages.out,
            onPressed: () => Get.offAll(() => const LoginScreen()),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(RImages.message),
            ),
            Text(
              'No Messages, yet.',
              style: TextStyle(
                  fontSize: RSizes.fontSizeLg * 1.5,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              'No messages in your inbox, yet!',
              style: TextStyle(
                  fontSize: RSizes.fontSizeMd,
                  fontWeight: FontWeight.w400,
                  color: RColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
