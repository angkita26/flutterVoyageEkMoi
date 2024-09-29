import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Client', style: TextStyle(fontWeight: FontWeight.bold)),
          leading: Icon(LineAwesomeIcons.angle_left_solid),
          backgroundColor: Color.fromRGBO(255, 192, 0, 1),
        ),
        body: FlutterMap(
          options: MapOptions(
            initialCenter: LatLng(-20.348404, 57.552152), // Coordinates of Mauritius
            initialZoom: 10.0, // Initial zoom level
          ),
          children: [
            TileLayer(
              // TileLayerOptions is no longer used, now we use TileLayer directly
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: const ['a', 'b', 'c'],
              userAgentPackageName: 'com.example.app', // Replace with your app's package name
            ),
          ],
        ),
      ),
    );
  }
}
