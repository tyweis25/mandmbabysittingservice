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

Future loadChildren() async {
  try {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      FFAppState().update(() {
        FFAppState().children = [];
        FFAppState().hasChildren = false;
      });
      return;
    }

    final userRef =
        FirebaseFirestore.instance.collection('users').doc(currentUser.uid);
    final querySnapshot = await userRef.collection('children').get();

    final list = <ChildrenStruct>[];
    for (final doc in querySnapshot.docs) {
      final data = doc.data();
      if (data.isEmpty) continue;
      // Support snake_case (Firestore) and camelCase
      final childName =
          (data['childName'] ?? data['child_name'])?.toString() ?? '';
      final childAge =
          (data['childAge'] ?? data['child_age'])?.toString() ?? '';
      final childNotes =
          (data['childNotes'] ?? data['child_notes'])?.toString() ?? '';
      final rawLikes = data['childLikes'] ?? data['child_likes'];
      final childLikes = rawLikes is List
          ? rawLikes.map((e) => e?.toString() ?? '').toList()
          : <String>[];
      list.add(ChildrenStruct(
        childName: childName,
        childAge: childAge,
        childNotes: childNotes,
        childLikes: childLikes,
      ));
    }

    FFAppState().update(() {
      FFAppState().children = list;
      FFAppState().hasChildren = list.isNotEmpty;
    });
  } catch (e) {
    debugPrint('Error loading children: $e');
    FFAppState().update(() {
      FFAppState().children = [];
      FFAppState().hasChildren = false;
    });
  }
}
