import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/chats/screens/chat.dart';
import 'package:ride_clone/features/history/screens/history.dart';
import 'package:ride_clone/features/home/screens/home.dart';
import 'package:ride_clone/features/home/screens/widgets/button_with_image.dart';
import 'package:ride_clone/features/profile/screens/profile.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RBottomNavigationScreen extends StatelessWidget {
  const RBottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          color: RColors.black,
        ),
        margin: const EdgeInsets.all(RSizes.defaultSpace),
        child: Obx(
          () => NavigationBar(
            backgroundColor: Colors.transparent, 
            selectedIndex: controller.selectedIndex.value,
            destinations: [
              RImageIconButton(
                onPressed: () => controller.selectedIndex.value = 0,
                image: RImages.home,
                color: controller.selectedIndex.value == 0
                    ? RColors.green
                    : Colors.transparent,
              ),
              RImageIconButton(
                onPressed: () => controller.selectedIndex.value = 1,
                image: RImages.list,
                color: controller.selectedIndex.value == 1
                    ? RColors.green
                    : Colors.transparent,
              ),
              RImageIconButton(
                onPressed: () => controller.selectedIndex.value = 2,
                image: RImages.chat,
                color: controller.selectedIndex.value == 2
                    ? RColors.green
                    : Colors.transparent,
              ),
              RImageIconButton(
                onPressed: () => controller.selectedIndex.value = 3,
                image: RImages.profile,
                color: controller.selectedIndex.value == 3
                    ? RColors.green
                    : Colors.transparent,
              ),
            ],
            elevation: 2.0,
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const ChatScreen(),
    const ProfileScreen()
  ];
}
