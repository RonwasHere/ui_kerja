import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapsWithClusterDua extends StatefulWidget {
  const MapsWithClusterDua({Key? key}) : super(key: key);

  @override
  State<MapsWithClusterDua> createState() => _MapsWithClusterDuaState();
}

class _MapsWithClusterDuaState extends State<MapsWithClusterDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(7.2575, 112.7521),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
