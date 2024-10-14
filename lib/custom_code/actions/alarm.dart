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

import 'dart:io';

import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:flutter/services.dart';

Future alarm(DateTime dateTime, int id) async {
  // Add your function code here!
  WidgetsFlutterBinding.ensureInitialized();

  final alarmSettings = AlarmSettings(
    id: id,
    dateTime:
        dateTime, //for testing use: DateTime.now().add(const Duration(minutes: 1))
    assetAudioPath: 'assets/audios/example_assets_star_wars.mp3',
    loopAudio: true,
    vibrate: true,
    volume: 0.8,
    fadeDuration: 10.0,
    notificationTitle: 'This is the title',
    notificationBody: 'This is the body',
    enableNotificationOnKill: Platform.isIOS,
  );
  await Alarm.set(alarmSettings: alarmSettings);
  Alarm.ringStream.stream.listen((_) => yourOnRingCallback(id));
}

yourOnRingCallback(int id) async {
  FFAppState().update(() {
    FFAppState().ringing = true;
  });
  await Alarm.stop(id);
}
