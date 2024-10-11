// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> geocodeAddress(String address) async {
  final uri = Uri.parse(
    'https://nominatim.openstreetmap.org/search?q=$address&format=json',
  );

  // Set custom headers to avoid being blocked
  final response = await http.get(
    uri,
    headers: {
      'User-Agent': 'YourAppName/1.0 (your_email@example.com)',
      'Referer': 'https://yourdomain.com/' // Optional
    },
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    if (data.isNotEmpty) {
      return data.first;
    } else {
      throw Exception('No results found');
    }
  } else {
    throw Exception('Failed to load data: ${response.body}');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
