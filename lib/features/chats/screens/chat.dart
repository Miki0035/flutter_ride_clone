import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/button_with_image_icon.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';
import 'package:ride_clone/utils/device/device_utility.dart';

import '../../authentication/screens/login/screens/login.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image(
                  image: const AssetImage(RImages.message),
                  width: RDeviceUtility.getSceenWidth() * 0.5,
                ),
                const Text(
                  'No Messages, yet.',
                  style: TextStyle(
                      fontSize: RSizes.fontSizeLg, fontWeight: FontWeight.w800),
                ),
                const Text(
                  'No messages in your inbox, yet!',
                  style: TextStyle(
                      fontSize: RSizes.fontSizeMd,
                      fontWeight: FontWeight.w400,
                      color: RColors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
