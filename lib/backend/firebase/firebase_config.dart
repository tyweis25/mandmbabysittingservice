import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAi1KoWOJOh8dKd3uY_AmqLdkABV1Okr2w",
            authDomain: "millieand-milee-babysit-8mznj9.firebaseapp.com",
            projectId: "millieand-milee-babysit-8mznj9",
            storageBucket: "millieand-milee-babysit-8mznj9.firebasestorage.app",
            messagingSenderId: "425760447003",
            appId: "1:425760447003:web:03488fa472cda038b9f6be"));
  } else {
    await Firebase.initializeApp();
  }
}
