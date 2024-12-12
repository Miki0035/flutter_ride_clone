import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/ride/screens/widgets/driver_info_container.dart';
import 'package:ride_clone/features/ride/screens/widgets/rider_list_view.dart';
import 'package:ride_clone/features/ride/screens/widgets/to_from_location_input_container.dart';

class RideController extends GetxController {
  static RideController get instance => Get.find();

  // ride navigation screens
  final screens = [
    const RRideToFromLocationInputContainer(),
    const RRiderListView(),
    const RRiderInformationContainer()
    // RButton(onPressed: () {}, text: "Select Ride"),
  ];

  final fromLocation = TextEditingController();
  final toLocation = TextEditingController();

  // for screen navigation
  Rx<int> currentIndex = 0.obs;

  // for selected rider index
  Rx<int> selectedRide = 0.obs;

  void selectRider() {
    // if (fromLocation.value.text.isNotEmpty &&
    //     toLocation.value.text.isNotEmpty) {
    // }
    currentIndex.value++;
  }
}
