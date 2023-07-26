import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart' as locationv2;
import 'package:trust_location/trust_location.dart';
import 'package:geocoding/geocoding.dart';
import 'package:ui_kerja/widget/cache_tile.dart';

//code dari https://sobatcoding.com/articles/menampilkan-lokasi-gps-menggunakan-flutter-map
class MapsWithClusterDua extends StatefulWidget {
  const MapsWithClusterDua({Key? key}) : super(key: key);

  @override
  State<MapsWithClusterDua> createState() => _MapsWithClusterDuaState();
}

class _MapsWithClusterDuaState extends State<MapsWithClusterDua> {
  locationv2.Location lokasi = locationv2.Location();
  double _latitude = 0;
  double _longitude = 0;
  String? _address;
  bool isLoading = true;
  final MapController _mapController = MapController();

  @override
  void initState() {
    requestPermission();
    getLocation();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> requestPermission() async {
    bool serviceEnabled;
    locationv2.PermissionStatus permissionGranted;
    serviceEnabled = await lokasi.serviceEnabled();

    //cek service
    if (!serviceEnabled) {
      serviceEnabled = await lokasi.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }

    //cek permission
    permissionGranted = await lokasi.hasPermission();
    if (permissionGranted == locationv2.PermissionStatus.denied) {
      permissionGranted = await lokasi.requestPermission();
      if (permissionGranted != locationv2.PermissionStatus.granted) {
        return false;
      }
    }
    return true;
  }

  //fungsi cek lokasi lewat GPS
  Future<void> getLocation() async {
    final hasPermission = await requestPermission();
    if (!hasPermission) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('permission denied'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text(
                      'Tanpa izin Penggunaan lokasi aplikasi ini tidak dapat digunakan dengan baik. \nApa anda yakin menolak izin pengaktifan lokasi?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    requestPermission();
                  },
                  child: Text('coba lagi'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Saya Yakin'),
                ),
              ],
            );
          });
    } else {
      //get location
      TrustLocation.start(5);
      try {
        TrustLocation.onChange.listen((values) {
          var mockStatus = values.isMockLocation;
          if (mockStatus == true) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Fake GPS terdeteksi. Mohon non aktifkan fitur FAKE GPS anda'),
              ),
            );
            TrustLocation.stop();
            return;
          }
          if (mounted) {
            setState(() {
              isLoading = false;
              _latitude = double.parse(values.latitude.toString());
              _longitude = double.parse(values.longitude.toString());

              _mapController.move(LatLng(_latitude, _longitude), 13);

              getPlace();
            });
          }
        });
      } on PlatformException catch (e) {
        debugPrint('PlatformException $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter_Map_plugin'),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: screenSize.height / 1.5,
              child: displayMap(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: screenSize.height / 4,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      Visibility(
                        visible: isLoading ? true : false,
                        child: CircularProgressIndicator(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      isLoading
                          ? Text('sedang mencari lokasi')
                          : Text(
                              'Lokasi anda adalah \n: Lat : $_latitude \nLong : $_longitude'),
                      Text(
                        'alamat = ' + _address.toString(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Visibility(
                        visible: isLoading ? false : true,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue),
                          ),
                          onPressed: () {
                            setState(() {
                              isLoading = true;
                              _address = "";
                            });
                            getLocation();
                          },
                          icon: Icon(Icons.my_location_outlined),
                          label: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Refresh Lokasi',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget displayMap() {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        center: LatLng(_latitude, _latitude),
        zoom: 15,
        maxZoom: 19,
      ),
      children: [
        MarkerLayer(
          rotate: true,
          markers: [
            Marker(
              width: 60.0,
              height: 60.0,
              point: LatLng(_latitude, _longitude),
              anchorPos: AnchorPos.align(AnchorAlign.top),
              builder: (ctx) => const Icon(
                Icons.fmd_good,
                color: Colors.redAccent,
                size: 20.0,
              ),
            ),
          ],
        ),
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          // tileProvider: CachedTileProvider(),
          subdomains: ['a', 'b', 'c'],
          maxZoom: 19,
        ),
      ],

      // children: [
      //   TileLayer(

      //   ),
      // TileLayerWidget(
      //   options: TileLayerOptions(
      //     urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
      //     tileProvider: CachedTileProvider(),
      //     subdomains: ['a', 'b', 'c'],
      //     maxZoom: 19,
      //   ),
      // )
      // ],
    );
  }

  void getPlace() async {
    List<Placemark> newPlace = await placemarkFromCoordinates(
        _latitude, _longitude,
        localeIdentifier: "en");

    //this is all u need
    Placemark placemark = newPlace[0];
    String name = placemark.name.toString();
    String subLocality = placemark.subLocality.toString();
    String locality = placemark.locality.toString();
    String administrativeArea = placemark.locality.toString();
    String postalCode = placemark.postalCode.toString();
    String country = placemark.country.toString();
    String address =
        "$name, $subLocality, $locality, $administrativeArea, $postalCode, $country";

    setState(() {
      _address = address;
    });
  }
}
