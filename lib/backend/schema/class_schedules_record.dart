import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassSchedulesRecord extends FirestoreRecord {
  ClassSchedulesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "available" field.
  int? _available;
  int get available => _available ?? 0;
  bool hasAvailable() => _available != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _day = snapshotData['day'] as DateTime?;
    _available = castToType<int>(snapshotData['available']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('class_schedules');

  static Stream<ClassSchedulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassSchedulesRecord.fromSnapshot(s));

  static Future<ClassSchedulesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassSchedulesRecord.fromSnapshot(s));

  static ClassSchedulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassSchedulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassSchedulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassSchedulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassSchedulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassSchedulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassSchedulesRecordData({
  String? name,
  DateTime? day,
  int? available,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'day': day,
      'available': available,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassSchedulesRecordDocumentEquality
    implements Equality<ClassSchedulesRecord> {
  const ClassSchedulesRecordDocumentEquality();

  @override
  bool equals(ClassSchedulesRecord? e1, ClassSchedulesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.day == e2?.day &&
        e1?.available == e2?.available;
  }

  @override
  int hash(ClassSchedulesRecord? e) =>
      const ListEquality().hash([e?.name, e?.day, e?.available]);

  @override
  bool isValidKey(Object? o) => o is ClassSchedulesRecord;
}
