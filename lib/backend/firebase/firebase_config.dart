import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCPmVsPJki49cR3hec0vi0mz4RoQy5fcjw",
            authDomain: "club-management-jj086b.firebaseapp.com",
            projectId: "club-management-jj086b",
            storageBucket: "club-management-jj086b.appspot.com",
            messagingSenderId: "522360512097",
            appId: "1:522360512097:web:af53915816586c799c1420"));
  } else {
    await Firebase.initializeApp();
  }
}
