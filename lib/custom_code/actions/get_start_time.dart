// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

Future<DateTime> getStartTime(String startTime) async {
  DateTime startDt = DateFormat('h:mm a').parse(startTime);

  DateTime selectedDate = FFAppState().selectedDate ?? DateTime.now();

  tz.initializeTimeZones();
  final locationUTC6 = tz.getLocation('America/Chicago');

  return tz.TZDateTime.from(
      DateTime(selectedDate.year, selectedDate.month, selectedDate.day,
          startDt.hour, startDt.minute),
      locationUTC6);
}
