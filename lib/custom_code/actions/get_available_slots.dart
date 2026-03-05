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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

Future<List<AvailableTimeslotsDataStruct>> getAvailableSlots() async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  List<AvailableTimeslotsDataStruct> availableSlots = [];

  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  String formattedSelectedDate =
      formatter.format(FFAppState().selectedDate ?? DateTime.now());

  final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
      .collection('availability_slots')
      .where('date', isEqualTo: formattedSelectedDate)
      .get();

  for (final doc in querySnapshot.docs) {
    final data = doc.data() as Map<String, dynamic>;

    AvailableTimeslotsDataStruct availableSlot = AvailableTimeslotsDataStruct();

    DateTime startDate = (data['start'] as Timestamp).toDate();
    DateTime endDate = (data['end'] as Timestamp).toDate();

    tz.initializeTimeZones();
    final locationUTC6 = tz.getLocation('America/Chicago');
    final now = tz.TZDateTime.from(DateTime.now(), locationUTC6);

    if (startDate < now) {
      startDate = DateTime.now();

      if (startDate.minute <= 30)
        startDate = DateTime(
            startDate.year, startDate.month, startDate.day, startDate.hour, 30);
      else
        startDate = DateTime(startDate.year, startDate.month, startDate.day,
            startDate.hour + 1, 0);
    }

    availableSlot.start = startDate;

    if (endDate.hour == 23 && endDate.minute == 59)
      endDate = DateTime(0, 0, 0, 0, 0);
    availableSlot.end = endDate;

    double endOffset = 0.0;
    double startOffset = 0.0;

    if (startDate.minute == 30)
      startOffset = (startDate.hour).toDouble() + .5;
    else
      startOffset = (startDate.hour).toDouble();

    if (endDate.minute == 30)
      endOffset = (endDate.hour).toDouble() + .5;
    else
      endOffset = (endDate.hour).toDouble();

    if (endDate.hour == 0 && endDate.minute == 0) {
      endOffset = 24;
    }

    double timeDiff = endOffset - startOffset;

    if (timeDiff >= 1.0) availableSlots.add(availableSlot);
  }
  return availableSlots;
}
