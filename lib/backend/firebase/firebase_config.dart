import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDmk6t1m8-80_UC6XKLsB--IMOyfNt0CY0",
            authDomain: "ikikravmaga-37686.firebaseapp.com",
            projectId: "ikikravmaga-37686",
            storageBucket: "ikikravmaga-37686.appspot.com",
            messagingSenderId: "576704877106",
            appId: "1:576704877106:web:dbda34abf71fb3a049e22b",
            measurementId: "G-DX5QMH245J"));
  } else {
    await Firebase.initializeApp();
  }
}
