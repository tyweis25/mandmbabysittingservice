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

// the loadParentAddress custom action does not work
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future loadParentAddress() async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      return;
    }

    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .get();

    if (!userDoc.exists) {
      return;
    }

    final data = userDoc.data();
    if (data == null) {
      return;
    }

    final addressData = data['parentAddress'];
    if (addressData == null) {
      FFAppState().isParentAddress = false;
      return;
    }

    if (addressData is Map<String, dynamic>) {
      final parentAddress = ParentAddressesStruct(
        streetNumber: addressData['streetNumber']?.toString() ?? '',
        streetName: addressData['streetName']?.toString() ?? '',
        city: addressData['city']?.toString() ?? '',
        state: addressData['state']?.toString() ?? '',
        zipcode: addressData['zipCode']?.toString() ?? '',
      );

      FFAppState().update(() {
        FFAppState().parentAddress = parentAddress;
        FFAppState().isParentAddress = true;
      });
    } else {
      FFAppState().update(() {
        FFAppState().isParentAddress = false;
      });
    }
  } catch (e) {
    debugPrint('Error loading parent address: $e');
    FFAppState().update(() {
      FFAppState().isParentAddress = false;
    });
  }
}
