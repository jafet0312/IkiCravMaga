import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuggestionsRecord extends FirestoreRecord {
  SuggestionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _score = castToType<int>(snapshotData['score']);
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('suggestions');

  static Stream<SuggestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuggestionsRecord.fromSnapshot(s));

  static Future<SuggestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuggestionsRecord.fromSnapshot(s));

  static SuggestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SuggestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuggestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuggestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuggestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuggestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuggestionsRecordData({
  DocumentReference? user,
  int? score,
  String? description,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'score': score,
      'description': description,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuggestionsRecordDocumentEquality implements Equality<SuggestionsRecord> {
  const SuggestionsRecordDocumentEquality();

  @override
  bool equals(SuggestionsRecord? e1, SuggestionsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.score == e2?.score &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date;
  }

  @override
  int hash(SuggestionsRecord? e) =>
      const ListEquality().hash([e?.user, e?.score, e?.description, e?.date]);

  @override
  bool isValidKey(Object? o) => o is SuggestionsRecord;
}
