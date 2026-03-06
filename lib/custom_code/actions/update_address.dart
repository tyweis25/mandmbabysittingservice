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

import 'index.dart'; // Imports other custom actions

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future updateAddress(
  String streetNumber,
  String streetName,
  String city,
  String state,
  String zipcode,
) async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
    final addressesRef = userRef.collection('parent_addresses');
    final snapshot = await addressesRef.limit(1).get();
    if (snapshot.docs.isEmpty) {
      debugPrint('updateAddress: no address document to update');
      return;
    }
    final docRef = snapshot.docs.first.reference;

    await docRef.update({
      'street_number': streetNumber,
      'street_name': streetName,
      'city': city,
      'state': state,
      'zipcode': zipcode,
      'full_address': '$streetNumber $streetName, $city, $state $zipcode',
    });

    await loadParentAddress();
  } catch (e) {
    debugPrint('Error updating address: $e');
    rethrow;
  }
}
