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

Future<double> getNumHours(
  String startTime,
  String endTime,
) async {
  DateTime startDt = DateFormat('h:mm a').parse(startTime);
  DateTime endDt = DateFormat('h:mm a').parse(endTime);

  double start = (startDt.hour).toDouble();
  if (startDt.minute == 30) start += .5;

  double end = (endDt.hour).toDouble();
  if (endDt.minute == 30)
    end += .5;
  else if (endDt.hour == 0 && endDt.minute == 0) end = 24;

  double totalHrs = end - start;

  return totalHrs;
}
