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

// can you map the input variables to create the document and do this in the code when the parent address is created and inset the  collection into the parent_addresses subcollection
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future createParentAddress(
  String streetNumber,
  String streetName,
  String city,
  String state,
  String zipcode,
) async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      return;
    }

    final String uid = currentUser.uid;

    final Map<String, dynamic> parentAddressData = {
      'street_number': streetNumber,
      'street_name': streetName,
      'city': city,
      'state': state,
      'zipcode': zipcode,
      'full_address': '$streetNumber $streetName, $city, $state $zipcode',
      'created_at': FieldValue.serverTimestamp(),
      'uid': uid,
    };

    final DocumentReference parentDocRef =
        FirebaseFirestore.instance.collection('users').doc(uid);

    final CollectionReference parentAddressesRef =
        parentDocRef.collection('parent_addresses');

    final DocumentReference newAddressRef =
        await parentAddressesRef.add(parentAddressData);

    FFAppState().parentAddress = ParentAddressesStruct(
      streetNumber: streetNumber,
      streetName: streetName,
      city: city,
      state: state,
      zipcode: zipcode,
    );

    FFAppState().isParentAddress = true;

    await parentDocRef.set({
      'has_parent_address': true,
      'latest_address_id': newAddressRef.id,
    }, SetOptions(merge: true));
  } catch (e) {
    print('Error creating parent address: $e');
    rethrow;
  }
}
