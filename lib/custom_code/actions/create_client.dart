// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future createClient(String emailAddress, String password, String role,
    String userName, String phone, String randomApp) async {
  DateTime createdTime = DateTime.now();
  FirebaseApp app = await Firebase.initializeApp(
      name: randomApp, options: Firebase.app().options);
  UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
      .createUserWithEmailAndPassword(email: emailAddress, password: password);
  String? userID = userCredential.user?.uid;

  final CollectionReference<Map<String, dynamic>> collection =
      FirebaseFirestore.instance.collection('users');
  collection.doc(userID).set({
    'uid': userID,
    'display_name': userName,
    'email': emailAddress,
    'created_time': createdTime,
    'phone_number': phone,
    'role': role,
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
