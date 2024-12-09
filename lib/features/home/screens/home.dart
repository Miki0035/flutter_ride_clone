import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_clone/common/widgets/appbar/appbar.dart';
import 'package:ride_clone/common/widgets/buttons/back_button_icon.dart';
import 'package:ride_clone/common/widgets/containers/main_vertical_container.dart';
import 'package:ride_clone/features/home/screens/widgets/search_container.dart';
import 'package:ride_clone/features/login/screens/login.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(title: "Welcome John", actions: [
        RBackButton(
          onPressed: () => Get.offAll(() => const LoginScreen()),
        )
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RSearchContainer(),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "Your Current Location",
                style: TextStyle(
                    fontSize: RSizes.fontSizeLg * 1.2,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: FlutterMap(
                  options: const MapOptions(
                      initialCenter: LatLng(51, -0.09), initialZoom: 13),
                  children: [
                    TileLayer(
                      urlTemplate:
                          "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                "Recent Rides",
                style: TextStyle(
                    fontSize: RSizes.fontSizeLg * 1.2,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const RVerticalContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
