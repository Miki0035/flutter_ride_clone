import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_clone/common/widgets/buttons/button_noicon.dart';
import 'package:ride_clone/common/widgets/containers/circular_container_with_image.dart';
import 'package:ride_clone/features/ride/controller/ride_controller.dart';
import 'package:ride_clone/features/ride/screens/widgets/row_with_price_time_seat.dart';
import 'package:ride_clone/features/ride/screens/widgets/row_with_text_icon.dart';
import 'package:ride_clone/utils/constants/colors.dart';
import 'package:ride_clone/utils/constants/images.dart';

class RRiderListView extends StatelessWidget {
  const RRiderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = RideController.instance;
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: controller.drivers.length,
              separatorBuilder: (_, index) => const SizedBox(
                height: 0.0,
              ),
              itemBuilder: (_, index) => Obx(
                () => Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  decoration: BoxDecoration(
                      border: const Border(
                          bottom: BorderSide(
                              color: RColors.veryLightGrey, width: 1.0)),
                      color: controller.selectedDriverIndex.value == index
                          ? RColors.brightBlue
                          : RColors.white),
                  child: ListTile(
                    selected: index == controller.selectedDriverIndex.value,
                    selectedTileColor: RColors.green,

                    onTap: () => controller.selectedDriverIndex.value = index,
                    leading: RCircularImage(
                      image: controller.drivers[index].profilePicture,
                      radius: 24.0,
                    ),

                    // Rider Name with Rating
                    title: RRowTextIcon(
                      driverName: controller.drivers[index].fullName,
                      ratings: controller.drivers[index].rating,
                    ),

                    // price , time, seats
                    subtitle: RRowPriceTimeSeat(
                      price: controller.drivers[index].price,
                      time: controller.drivers[index].pickupTime,
                      seats: controller.drivers[index].carSeats,
                    ),
                    trailing: Transform.flip(
                      flipX: true,
                      child: const Image(
                        image: AssetImage(RImages.blackCar),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          RButton(
              onPressed: () => {
                    controller.selectedDriver.value = controller
                        .drivers[controller.selectedDriverIndex.value],
                    controller.currentIndex.value++,
                  },
              text: "Select Ride")
        ],
      ),
    );
  }
}
