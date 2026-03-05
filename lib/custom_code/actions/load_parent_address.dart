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
      FFAppState().update(() => FFAppState().isParentAddress = false);
      return;
    }

    final userRef =
        FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
    final querySnapshot =
        await ParentAddressesRecord.collection(userRef).limit(1).get();

    if (querySnapshot.docs.isEmpty) {
      FFAppState().update(() => FFAppState().isParentAddress = false);
      return;
    }

    final doc = querySnapshot.docs.first;
    final data = doc.data();
    if (data == null || data.isEmpty) {
      FFAppState().update(() => FFAppState().isParentAddress = false);
      return;
    }

    // create_parent_address writes snake_case (street_number, street_name);
    // ParentAddressesRecord expects camelCase. Support both.
    final parentAddress = ParentAddressesStruct(
      streetNumber: (data['streetNumber'] ?? data['street_number'])?.toString(),
      streetName: (data['streetName'] ?? data['street_name'])?.toString(),
      city: data['city']?.toString(),
      state: data['state']?.toString(),
      zipcode: data['zipcode']?.toString(),
      parentRef: userRef,
    );

    FFAppState().update(() {
      FFAppState().parentAddress = parentAddress;
      FFAppState().isParentAddress = true;
    });
  } catch (e) {
    debugPrint('Error loading parent address: $e');
    FFAppState().update(() => FFAppState().isParentAddress = false);
  }
}
