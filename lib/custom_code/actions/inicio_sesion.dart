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

//Resultados
// credencialesValidos
// credencialesInvalidos
// error

Future<bool> inicioSesion(String correo, String contrasenia) async {
  try {
    // Inicializamos una instancia de firebase en caso de que aun no exista
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp();
    }

    // Iniciamos sesion
    UserCredential credencialesUsuario = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: correo, password: contrasenia);

    if (credencialesUsuario.user != null) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
