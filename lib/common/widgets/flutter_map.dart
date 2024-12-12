import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class RFlutterMap extends StatelessWidget {
  const RFlutterMap({
    super.key, required this.height,  this.width = double.infinity,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
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
    );
  }
}
