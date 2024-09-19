import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC58380iLQyBelWdDdHreIVeRSWHi_F5DY",
            authDomain: "chegii-sspal-1i34sf.firebaseapp.com",
            projectId: "chegii-sspal-1i34sf",
            storageBucket: "chegii-sspal-1i34sf.appspot.com",
            messagingSenderId: "388277384316",
            appId: "1:388277384316:web:9694fb3eb28f2e3f9945f9"));
  } else {
    await Firebase.initializeApp();
  }
}
