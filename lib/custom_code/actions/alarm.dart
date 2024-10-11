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

Future alarm(DateTime dateTime) async {
  // Add your function code here!
  WidgetsFlutterBinding.ensureInitialized();

  await Alarm.init();

  final alarmSettings = AlarmSettings(
    id: 42,
    dateTime: dateTime,
    assetAudioPath: 'assets/audios/Amnesia.mp4',
    loopAudio: true,
    vibrate: true,
    volume: 0.8,
    fadeDuration: 3.0,
    notificationTitle: 'This is the title',
    notificationBody: 'This is the body',
    enableNotificationOnKill: Platform.isIOS,
  );
}
