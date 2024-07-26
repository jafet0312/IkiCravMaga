import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesTemplateRecord extends FirestoreRecord {
  CoursesTemplateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "maxCapacity" field.
  int? _maxCapacity;
  int get maxCapacity => _maxCapacity ?? 0;
  bool hasMaxCapacity() => _maxCapacity != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _maxCapacity = castToType<int>(snapshotData['maxCapacity']);
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coursesTemplate');

  static Stream<CoursesTemplateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesTemplateRecord.fromSnapshot(s));

  static Future<CoursesTemplateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesTemplateRecord.fromSnapshot(s));

  static CoursesTemplateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesTemplateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesTemplateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesTemplateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesTemplateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesTemplateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesTemplateRecordData({
  String? name,
  int? price,
  int? maxCapacity,
  String? description,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'maxCapacity': maxCapacity,
      'description': description,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesTemplateRecordDocumentEquality
    implements Equality<CoursesTemplateRecord> {
  const CoursesTemplateRecordDocumentEquality();

  @override
  bool equals(CoursesTemplateRecord? e1, CoursesTemplateRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.maxCapacity == e2?.maxCapacity &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CoursesTemplateRecord? e) => const ListEquality()
      .hash([e?.name, e?.price, e?.maxCapacity, e?.description, e?.image]);

  @override
  bool isValidKey(Object? o) => o is CoursesTemplateRecord;
}
