import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapContainer extends StatefulWidget {
  const GoogleMapContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<GoogleMapContainer> createState() => _GoogleMapContainerState();
}

class _GoogleMapContainerState extends State<GoogleMapContainer> {
  static CameraPosition kInitialCameraPosition = const CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: GoogleMap(
        initialCameraPosition: kInitialCameraPosition,
      ),
    );
  }
}
