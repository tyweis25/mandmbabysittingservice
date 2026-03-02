import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<CateModelStruct>? filterdata(
  String title,
  List<CateModelStruct> detail,
) {
  return detail.where((detail) => detail.cateType == title).toList();
}

List<NotificationsData2Struct>? notificationsListProcessor(
    List<NotificationsRecord>? notificationsData) {
  List<NotificationsData2Struct> notifyData2 = [];

  if (notificationsData != null) {
    for (int i = 0; i < notificationsData.length; i++) {
      NotificationsRecord notification = notificationsData[i];

      notifyData2.add(notification as NotificationsData2Struct);
    }
  }

  return notifyData2;
}
