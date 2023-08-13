import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mappage extends StatefulWidget {
  const mappage({Key? key}) : super(key: key);

  @override
  State<mappage> createState() => _mappageState();
}

class _mappageState extends State<mappage> {
  final Completer<GoogleMapController>_controller = Completer();
  
  static const LatLng sourceLocation = LatLng(22.572645, 88.363892);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Track Order"
        ),
      ),
      body: GoogleMap(initialCameraPosition:
      CameraPosition(target: sourceLocation, zoom: 14.5),
      ),
      );
  }
}
