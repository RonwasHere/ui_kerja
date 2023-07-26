import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:latlong2/latlong.dart';

class MapsWithCluster extends StatelessWidget {
  const MapsWithCluster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("openstreetmap Flutter"),
          ),
          body: Container(
            child: FlutterMap(
              options: MapOptions(
                  center: LatLng(-7.2982286, 112.669296), zoom: 16.0),
              children: [
                TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
                MarkerLayer(
                markers: [
                  Marker(
                    width: 30.0,
                    height: 30.0,
                    point: LatLng(-7.2982286, 112.669296),
                    builder: (ctx) => Container(
                      child: Container(
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
        ));

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Clustering Many Marker Page'),
    //   ),
    //   body: FlutterMap(
    //     options: MapOptions(
    //       // center: ,
    //       zoom: 6,
    //       maxZoom: 15,
    //     ),
    //     children: [
    //       TileLayer(
    //         urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
    //         subdomains: const ['a', 'b', 'c'],
    //       ),
    //       MarkerLayer(markers: [
    //         Marker(
    //             width: 30.0,
    //             height: 30.0,
    //             point: LatLng(-7.2982286, 112.669296),
    //             builder: (ctx) => Container(
    //                     child: Container(
    //                   child: const Icon(
    //                     Icons.location_on,
    //                     color: Colors.blueAccent,
    //                     size: 40,
    //                   ),
    //                 )))
    //       ])

    //       // MarkerClusterLayerWidget(
    //       //   options: MarkerClusterLayerOptions(
    //       //     maxClusterRadius: 45,
    //       //     size: Size(40, 40),
    //       //     anchor: AnchorPos.align(AnchorAlign.center),
    //       //     fitBoundsOptions: FitBoundsOptions(
    //       //       padding: EdgeInsets.all(50),
    //       //       maxZoom: 15,
    //       //     ),
    //       //     // markers: markers,
    //       //     builder: (context, marker) {
    //       //       return Container(
    //       //         decoration: BoxDecoration(
    //       //           borderRadius: BorderRadius.circular(20),
    //       //           color: Colors.blue,
    //       //         ),
    //       //         // child: Center(
    //       //         //   child: Text(
    //       //         //     markers.length.toString(),
    //       //         //     style: TextStyle(color: Colors.white),
    //       //         //   ),
    //       //         // ),
    //       //       );
    //       //     },
    //       //   ),
    //       // ),
    //     ],
    //   ),
    // );
  }
}
