import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class NearByPage extends StatefulWidget {
  const NearByPage({Key? key}) : super(key: key);

  @override
  State<NearByPage> createState() => _NearByPageState();
}

class _NearByPageState extends State<NearByPage> {
  // final CustomInfoWindowController _customInfoWindowController = CustomInfoWindowController();
  final Completer<GoogleMapController> _controller = Completer();
  final List<Marker> _marker = [];

  // NearbyPlacesResponse nearbyPlacesResponse = NearbyPlacesResponse();
  double currentLat = 0.0;
  double currentLng = 0.0;
  String type = 'restaurant';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadData();
    navigateToCurrentPosition();
    print("dsdfdsfdsf");
    // getNearbyPlaces();
    // loadData();
  }

/*  loadData() {
    if (nearbyPlacesResponse.results != null) {
      for (int i = 0; i < nearbyPlacesResponse.results!.length; i++) {
        addMarkers(nearbyPlacesResponse.results![i], i);
        log("nearbyPlacesResponse-----${nearbyPlacesResponse.results![i]}");
      }
    }
  }*/

/*  void addMarkers(Results results, int i) {
    _marker.add(Marker(
      markerId: MarkerId(i.toString()),
      icon: BitmapDescriptor.defaultMarker,
      position: LatLng(results.geometry!.location!.lat!, results.geometry!.location!.lng!),
    ));

    setState(() {});
  }*/

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace) {
      debugPrint('error in getting current location');
      debugPrint(error.toString());
    });

    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  void navigateToCurrentPosition() {
    log("navigateToCurrentPosition----------1 ");
    getUserCurrentLocation().then((value) async {
      debugPrint('My current location');
      debugPrint(value.latitude.toString() + value.longitude.toString());
      log("navigateToCurrentPosition----------2  :${value.latitude} :${value.longitude} :${value.altitude} :${value.accuracy} ");

      _marker.add(Marker(
          markerId: const MarkerId("yeiuwe87"),
          position: LatLng(value.latitude, value.longitude),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
          infoWindow: const InfoWindow(
            title: 'My current location',
          )));

      CameraPosition cameraPosition = CameraPosition(
        target: LatLng(value.latitude, value.longitude),
        zoom: 14,
      );

      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {
        currentLat = value.latitude;
        currentLng = value.longitude;
        getNearbyPlaces(type);
      });
    });
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(0, 0),
    zoom: 100.4746,
    bearing: 5,
    tilt: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        actions: [
          PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              itemBuilder: (context) {
            return [
              const PopupMenuItem<int>(
                value: 0,
                child: Text("Restaurant"),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text("Hospital"),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: const Text("Mosque"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              type = 'restaurant';
              getNearbyPlaces(type);
            } else if (value == 1) {
              type = 'hospital';
              getNearbyPlaces(type);
            } else if (value == 2) {
              type = 'mosque';
              getNearbyPlaces(type);
            }
          }),
        ],
      ),*/
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex,
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: Set<Marker>.of(_marker),
            ),
            // CustomInfoWindow(
            //   controller: _customInfoWindowController,
            //   height: 20,
            //   width: 0,
            //   offset: 0,
            // )
          ],
        ),
      ),
    );
  }

  void getNearbyPlaces(String type) async {
    _marker.clear();
    var url = Uri.parse('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=' +
        currentLat.toString() +
        ',' +
        currentLng.toString() +
        '&radius=1500&type=' +
        "restaurant" +
        '&key=AIzaSyCL04QksUmF_htT3KZFezNmW6O2m1T6x60');

    var response = await http.post(url);

    print("printing latlng");
    print(jsonDecode(response.body));
    // nearbyPlacesResponse = NearbyPlacesResponse.fromJson(jsonDecode(response.body));
    print("printing latlng");
    print(jsonDecode(response.body));

    // loadData();
    setState(() {});
  }
}
