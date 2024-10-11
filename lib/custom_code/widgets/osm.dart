// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_osm_plugin/flutter_osm_plugin.dart'
    as flutter_osm_plugin;

class Osm extends StatefulWidget {
  const Osm({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Osm> createState() => _OsmState();
}

class _OsmState extends State<Osm> {
  flutter_osm_plugin.MapController controller =
      flutter_osm_plugin.MapController.customLayer(
    initPosition:
        flutter_osm_plugin.GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    customTile: flutter_osm_plugin.CustomTile(
      sourceName: "opentopomap",
      tileExtension: ".png",
      minZoomLevel: 2,
      maxZoomLevel: 19,
      urlsServers: [
        flutter_osm_plugin.TileURLs(
          //"https://tile.opentopomap.org/{z}/{x}/{y}"
          url: "https://tile.opentopomap.org/",
          subdomains: [],
        )
      ],
      tileSize: 256,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return flutter_osm_plugin.OSMFlutter(
        controller: controller,
        osmOption: flutter_osm_plugin.OSMOption(
          userTrackingOption: const flutter_osm_plugin.UserTrackingOption(
            enableTracking: true,
            unFollowUser: false,
          ),
          zoomOption: const flutter_osm_plugin.ZoomOption(
            initZoom: 8,
            minZoomLevel: 3,
            maxZoomLevel: 19,
            stepZoom: 1.0,
          ),
          userLocationMarker: flutter_osm_plugin.UserLocationMaker(
            personMarker: const flutter_osm_plugin.MarkerIcon(
              icon: Icon(
                Icons.location_history_rounded,
                color: Colors.red,
                size: 48,
              ),
            ),
            directionArrowMarker: const flutter_osm_plugin.MarkerIcon(
              icon: Icon(
                Icons.double_arrow,
                size: 48,
              ),
            ),
          ),
          roadConfiguration: const flutter_osm_plugin.RoadOption(
            roadColor: Colors.yellowAccent,
          ),
          markerOption: flutter_osm_plugin.MarkerOption(
              defaultMarker: const flutter_osm_plugin.MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: Colors.blue,
              size: 56,
            ),
          )),
        ));
  }
}
