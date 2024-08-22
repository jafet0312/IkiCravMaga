import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompletedCoursesRecord extends FirestoreRecord {
  CompletedCoursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _imageURL = snapshotData['imageURL'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('completedCourses')
          : FirebaseFirestore.instance.collectionGroup('completedCourses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('completedCourses').doc(id);

  static Stream<CompletedCoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompletedCoursesRecord.fromSnapshot(s));

  static Future<CompletedCoursesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CompletedCoursesRecord.fromSnapshot(s));

  static CompletedCoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompletedCoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompletedCoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompletedCoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompletedCoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompletedCoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompletedCoursesRecordData({
  String? name,
  String? imageURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'imageURL': imageURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompletedCoursesRecordDocumentEquality
    implements Equality<CompletedCoursesRecord> {
  const CompletedCoursesRecordDocumentEquality();

  @override
  bool equals(CompletedCoursesRecord? e1, CompletedCoursesRecord? e2) {
    return e1?.name == e2?.name && e1?.imageURL == e2?.imageURL;
  }

  @override
  int hash(CompletedCoursesRecord? e) =>
      const ListEquality().hash([e?.name, e?.imageURL]);

  @override
  bool isValidKey(Object? o) => o is CompletedCoursesRecord;
}
