import 'package:flutter/material.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/back_button_icon.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(
        title: const Text(
          "Chat List",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: RSizes.fontSizeLg * 1.3),
        ),
        actions: [
          RBackButton(
            onPressed: () {},
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
            Text('No Messages, yet.' , style: TextStyle(
              fontSize: RSizes.fontSizeLg * 1.5,
              fontWeight: FontWeight.w800
            ),),
            Text('No messages in your inbox, yet!', style: TextStyle(
              fontSize: RSizes.fontSizeMd,
              fontWeight: FontWeight.w400,
              color: RColors.grey
            ),),
      
          ],
        ),
      ),
    );
  }
}