import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';

class GoogleMapContainer extends StatefulWidget {
  const GoogleMapContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<GoogleMapContainer> createState() => _GoogleMapContainerState();
}

class _GoogleMapContainerState extends State<GoogleMapContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
    );
  }

  void myMap() {
    GMap(
      document.getElementById('map') as HtmlElement,
      MapOptions()
        ..center = LatLng(-34.397, 150.644)
        ..zoom = 8,
    );
  }
}
