import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/features/ride/models/driver_model.dart';
import 'package:ride_clone/features/ride/screens/widgets/driver_info_container.dart';
import 'package:ride_clone/features/ride/screens/widgets/rider_list_view.dart';
import 'package:ride_clone/features/ride/screens/widgets/to_from_location_input_container.dart';
import 'package:ride_clone/features/ride/screens/widgets/track_rider_container.dart';
import 'package:ride_clone/utils/constants/images.dart';

class RideController extends GetxController {
  static RideController get instance => Get.find();

  // Drivers
  final List<DriverModel> drivers = [
    DriverModel(
        id: "0",
        firstName: "Jane",
        lastName: "Cooper",
        rating: 4.9,
        profilePicture: RImages.rider0,
        price: 60.00,
        pickupTime: "10",
        carSeats: "4"),
    DriverModel(
        id: "1",
        firstName: "Esther",
        lastName: "Howard",
        rating: 4.9,
        profilePicture: RImages.rider1,
        price: 65.00,
        pickupTime: "12",
        carSeats: "4"),
    DriverModel(
        id: "2",
        firstName: "Leslie",
        lastName: "Alexander",
        rating: 5,
        profilePicture: RImages.rider2,
        price: 70.00,
        pickupTime: "10",
        carSeats: "4"),
    DriverModel(
        id: "3",
        firstName: "Robert",
        lastName: "Fox",
        rating: 4.9,
        profilePicture: RImages.rider3,
        price: 68.00,
        pickupTime: "16",
        carSeats: "4")
  ];

  final fromLocation = TextEditingController();
  final toLocation = TextEditingController();

  // for screen navigation
  Rx<int> currentIndex = 0.obs;

  // for selected rider from List of drivers
  Rx<int> selectedDriverIndex = 0.obs;

  // selected driver DriverModel object
  Rx<DriverModel> selectedDriver = DriverModel.empty().obs;

  // ride navigation screens
  final screens = [
    const RRideToFromLocationInputContainer(),
    const RRiderListView(),
    const RRiderInformationContainer(),
    const RTrackRider(),
  ];

  void selectRider() {
    // if (fromLocation.value.text.isNotEmpty &&
    //     toLocation.value.text.isNotEmpty) {
    // }
    currentIndex.value++;
  }
}
