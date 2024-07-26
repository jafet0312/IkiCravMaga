// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<CoursesRecord>> getCursosPorFecha(DateTime date) async {
  // Add your function code here!
/*
  // Obtén una instancia de la colección 'courses'
  CollectionReference coursesRef =
      FirebaseFirestore.instance.collection('courses');

  // Realiza la consulta para obtener cursos con la fecha proporcionada
  QuerySnapshot querySnapshot =
      await coursesRef.where('date', isEqualTo: Timestamp.fromDate(date)).get();

  // Convierte los documentos en instancias de CoursesRecord
  List<CoursesRecord> cursos =
      querySnapshot.docs.map((doc) => CoursesRecord.fromSnapshot(doc)).toList();

  return cursos;
*/
  CollectionReference coursesRef =
      FirebaseFirestore.instance.collection('courses');

  final dateStart =
      Timestamp.fromDate(DateTime(date.year, date.month, date.day, 0, 0, 0));
  final dateEnd =
      Timestamp.fromDate(DateTime(date.year, date.month, date.day, 23, 59, 59));

  QuerySnapshot querySnapshot = await coursesRef
      .where('date', isGreaterThanOrEqualTo: dateStart)
      .where('date', isLessThanOrEqualTo: dateEnd)
      .get();

  List<CoursesRecord> cursos =
      querySnapshot.docs.map((doc) => CoursesRecord.fromSnapshot(doc)).toList();

  return cursos;
}
