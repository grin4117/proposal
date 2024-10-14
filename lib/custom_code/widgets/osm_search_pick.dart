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

import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class OsmSearchPick extends StatefulWidget {
  const OsmSearchPick({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<OsmSearchPick> createState() => _OsmSearchPickState();
}

class _OsmSearchPickState extends State<OsmSearchPick> {
  @override
  Widget build(BuildContext context) {
    return Container(child: OpenStreetMapSearchAndPick(
      onPicked: (pickedData) {
        print(pickedData.latLong.latitude);
        print(pickedData.latLong.longitude);
        print(pickedData.address);
        print(pickedData.addressName);
      },
    ));
  }
}
