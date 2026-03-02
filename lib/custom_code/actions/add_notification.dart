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

NotificationsData2Struct? addNotification(
    NotificationsRecord? notificationsData) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  NotificationsData2Struct tmpDataStruct = NotificationsData2Struct();

  if (notificationsData != null) {
    tmpDataStruct.msg = notificationsData.msg;
    tmpDataStruct.detail = notificationsData.detail;
    tmpDataStruct.time =
        "${notificationsData.time?.year.toString()}-${notificationsData.time?.month.toString().padLeft(2, '0')}-${notificationsData.time?.day.toString().padLeft(2, '0')}";
    tmpDataStruct.uid = notificationsData.uid;
  }

  return tmpDataStruct;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
