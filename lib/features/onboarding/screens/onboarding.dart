import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/features/login/screens/login.dart';
import 'package:ride_clone/features/onboarding/controller/onboarding_controller.dart';
import 'package:ride_clone/features/onboarding/models/banner_model.dart';
import 'package:ride_clone/features/onboarding/screens/widgets/onboarding_dots.dart';
import 'package:ride_clone/features/onboarding/screens/widgets/onboarding_page.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final banners = [
    RBannerModel(
      image: RImages.onboarding1,
      title: "The Best car in your hands with ",
      colorText: "Ryde",
      subtitle:
          "Discover the convenience of finding your perfect ride with our Ryde App",
    ),
    RBannerModel(
      image: RImages.onboarding2,
      title: "The Perfect ride is just a tap away!",
      subtitle:
          "Your journey begins with Ryde. Find your ideal ride effortlessly",
    ),
    RBannerModel(
      image: RImages.onboarding3,
      title: "Your ride,your way.Let's get started",
      subtitle:
          "Enter your destination, sit back, and let us take care of the rest",
    )
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: RAppBar(
        actions: [
          TextButton(
            onPressed: () => Get.off(() => const LoginScreen()),
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IgnorePointer(
            child: CarouselSlider.builder(
              disableGesture: true,
              carouselController: controller.carouselSliderController,
              itemCount: banners.length,
              itemBuilder: (_, int index, int pageViewIndex) => OnBoardingPage(
                image: banners[index].image,
                title: banners[index].title,
                subtitle: banners[index].subtitle,
                colorText: banners[index].colorText,
              ),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                viewportFraction: 1,
                autoPlay: false,
                initialPage: 0,
                height: 520,
              ),
            ),
          ),
          const Center(child: OnBoardingDots()),
          const SizedBox(
            height: 4.0,
          ),
          Obx(
            () => RButton(
              onPressed: () => controller.nextPage(),
              text: controller.carouselPageIndex.value == 2
                  ? 'Get Started'
                  : 'Next',
            ),
          )
        ],
      ),
    );
  }
}
