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
import 'package:firebase_auth/firebase_auth.dart';

Future createChild(
  String childName,
  String childAge,
  String childNotes,
  List<String>? childLikes,
) async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
    final childrenRef = userRef.collection('children');

    await childrenRef.add({
      'child_name': childName,
      'child_age': childAge,
      'child_notes': childNotes,
      'child_likes': childLikes ?? [],
      'parent': userRef,
    });

    await loadChildren();
  } catch (e) {
    debugPrint('Error creating child: $e');
    rethrow;
  }
}
