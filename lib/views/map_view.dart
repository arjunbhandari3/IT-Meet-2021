import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itmeet/core/controllers/map_controller.dart';

class MapView extends GetView<MapController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Locate Us",
            style: GoogleFonts.poppins(
              fontSize: 23.0,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF1A0551),
                  Color(0xFF1A0551),
                  Color(0xFF1A0551),
                  Color(0xFF2F0572),
                ],
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF1A0551),
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              controller.cameraPosition == null
                  ? Container(
                      color: Color(0xFF1A0551),
                      child: Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    )
                  : GoogleMap(
                      mapType: MapType.normal,
                      myLocationButtonEnabled: true,
                      myLocationEnabled: true,
                      markers: Set.from(controller.allMarkers),
                      initialCameraPosition: controller.cameraPosition,
                      onMapCreated: (GoogleMapController googleMapController) {
                        controller.mapController.complete(googleMapController);
                      },
                      onCameraMove: (CameraPosition _cameraPosition) {
                        controller.cameraPosition = _cameraPosition;
                      },
                    ),
              IgnorePointer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Kathmandu University\n",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      children: [
                        TextSpan(
                          text: "Dulikhel, Kavre",
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
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
