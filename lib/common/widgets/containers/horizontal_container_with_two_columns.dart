import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_clone/utils/constants/images.dart';
import 'package:ride_clone/utils/constants/sizes.dart';

class RHorizontalContainerTwoColumn extends StatelessWidget {
  const RHorizontalContainerTwoColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            width: 100.00,
            height: 100.00,
            child: FlutterMap(
              options: const MapOptions(
                  initialCenter: LatLng(51, -0.09), initialZoom: 13),
              children: [
                TileLayer(
                  urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 12.0,
        ),
        const Expanded(
            flex: 3,
            child: Column(
              children: [
                // Point
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(RImages.to),
                      width: 32.0,
                      height: 32.0,
                    ),
                    Text(
                      "1901 Thronridge Cir.Shiloh",
                      style: TextStyle(
                          fontSize: RSizes.fontSizeMd,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),

                SizedBox(
                  height: 8.0,
                ),

                // Location
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(RImages.location),
                      width: 32.0,
                      height: 32.0,
                    ),
                    Text(
                      "4041 Parker Rd. Allentown",
                      style: TextStyle(
                          fontSize: RSizes.fontSizeMd,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
