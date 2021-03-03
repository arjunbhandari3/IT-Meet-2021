import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  List<Marker> allMarkers = <Marker>[];
  CameraPosition cameraPosition;
  Completer<GoogleMapController> mapController = Completer();

  static final LatLng itmeetLocation = LatLng(27.6196157, 85.538433);

  MapController() {
    goMainLocation();
  }

  void goMainLocation() async {
    cameraPosition = CameraPosition(
      target: itmeetLocation,
      zoom: 14.4746,
    );
    allMarkers.add(Marker(
      markerId: MarkerId("ITMeet2021"),
      anchor: Offset(0.5, 0.5),
      position: LatLng(itmeetLocation.latitude, itmeetLocation.longitude),
      icon: BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(title: "Kathmandu University"),
    ));
  }
}
