import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAsv8t3t-TkgNrchBWYhSySt5hO-40QaZc",
            authDomain: "mondaha-9r9wpx.firebaseapp.com",
            projectId: "mondaha-9r9wpx",
            storageBucket: "mondaha-9r9wpx.appspot.com",
            messagingSenderId: "455267850635",
            appId: "1:455267850635:web:23efc34cbd1a47555fb78e"));
  } else {
    await Firebase.initializeApp();
  }
}
