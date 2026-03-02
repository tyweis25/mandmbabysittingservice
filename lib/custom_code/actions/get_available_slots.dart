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

    double startMinutes = (startDate.minute).toDouble() / 60;
    double endMinutes = (endDate.minute).toDouble() / 60;

    double startHourMinutes = (startDate.hour).toDouble() + startMinutes;
    double endHourMinutes = (endDate.hour).toDouble() + endMinutes;

    availableSlot.start = startDate;
    availableSlot.end = endDate;
    availableSlots.add(availableSlot);

/*
    DateTime startFormat =
        DateTime(startDate.year, startDate.month, startDate.day);
    DateTime endFormat = DateTime(endDate.year, endDate.month, endDate.day);
    DateTime? selectedDate = FFAppState().selectedDate;
    DateTime selectedDateFormat = DateTime(selectedDate?.year ?? 0,
        selectedDate?.month ?? 0, selectedDate?.day ?? 0);

    if (startFormat == selectedDateFormat) {
      availableSlot.start = startDate;
      if (endFormat != selectedDateFormat)
        availableSlot.end =
            DateTime(endDate.year, endDate.month, endDate.day, 23, 59);
      else
        availableSlot.end = endDate;*/
  }
  return availableSlots;
}
