import 'package:flutter/cupertino.dart';
import 'package:ride_clone/common/widgets/containers/horizontal_container_with_two_columns.dart';
import 'package:ride_clone/common/widgets/containers/ride_info_container.dart';
import 'package:ride_clone/utils/constants/colors.dart';

class RVerticalContainer extends StatelessWidget {
  const RVerticalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: RColors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Column(children: [
          RHorizontalContainerTwoColumn(),
          SizedBox(height: 24.0,),
          RRideInfoContainer(),
        ]));
  }
}
