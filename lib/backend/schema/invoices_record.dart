import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoicesRecord extends FirestoreRecord {
  InvoicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "course" field.
  DocumentReference? _course;
  DocumentReference? get course => _course;
  bool hasCourse() => _course != null;

  // "purchaseDate" field.
  DateTime? _purchaseDate;
  DateTime? get purchaseDate => _purchaseDate;
  bool hasPurchaseDate() => _purchaseDate != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _course = snapshotData['course'] as DocumentReference?;
    _purchaseDate = snapshotData['purchaseDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoices');

  static Stream<InvoicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoicesRecord.fromSnapshot(s));

  static Future<InvoicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoicesRecord.fromSnapshot(s));

  static InvoicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoicesRecordData({
  DocumentReference? user,
  DocumentReference? course,
  DateTime? purchaseDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'course': course,
      'purchaseDate': purchaseDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoicesRecordDocumentEquality implements Equality<InvoicesRecord> {
  const InvoicesRecordDocumentEquality();

  @override
  bool equals(InvoicesRecord? e1, InvoicesRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.course == e2?.course &&
        e1?.purchaseDate == e2?.purchaseDate;
  }

  @override
  int hash(InvoicesRecord? e) =>
      const ListEquality().hash([e?.user, e?.course, e?.purchaseDate]);

  @override
  bool isValidKey(Object? o) => o is InvoicesRecord;
}
