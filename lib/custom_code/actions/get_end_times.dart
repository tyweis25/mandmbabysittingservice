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

Future<List<String>> getEndTimes(
    DateTime startTime, DateTime endTime, String? selectedStartTimeStr) async {
  List<String> timeList = [];

  if (selectedStartTimeStr != null && selectedStartTimeStr.isNotEmpty) {
    DateTime dt = DateFormat('h:mm a').parse(selectedStartTimeStr);
    startTime = DateTime(0, 0, 0, dt.hour, dt.minute);
  }

  double startIndex = (startTime.hour).toDouble();
  double endIndex = (endTime.hour).toDouble();

  if (startTime.minute > 0) startIndex += 0.5;
  if (endTime.minute > 0) endIndex += 0.5;

  startIndex += 1.0;

  if (endTime.hour == 0 && endTime.minute == 0) endIndex = 23.5;

  for (double i = startIndex; i <= endIndex; i += 0.5) {
    DateTime tempTime = DateTime(0, 0, 0, 0, 0);

    if ((i % 1.0) == 0.0)
      tempTime = DateTime(0, 0, 0, i.toInt(), 0);
    else
      tempTime = DateTime(0, 0, 0, i.toInt(), 30);

    timeList.add(DateFormat('h:mm a').format(tempTime));
  }

  if (endTime.hour == 0 && endTime.minute == 0)
    timeList.add(DateFormat('h:mm a').format(DateTime(0, 0, 0, 0, 0)));

  return timeList;
}
