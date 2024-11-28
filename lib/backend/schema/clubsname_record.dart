import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubsnameRecord extends FirestoreRecord {
  ClubsnameRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clubs_name" field.
  String? _clubsName;
  String get clubsName => _clubsName ?? '';
  bool hasClubsName() => _clubsName != null;

  void _initializeFields() {
    _clubsName = snapshotData['clubs_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubsname');

  static Stream<ClubsnameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsnameRecord.fromSnapshot(s));

  static Future<ClubsnameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsnameRecord.fromSnapshot(s));

  static ClubsnameRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClubsnameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsnameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsnameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsnameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsnameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsnameRecordData({
  String? clubsName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clubs_name': clubsName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsnameRecordDocumentEquality implements Equality<ClubsnameRecord> {
  const ClubsnameRecordDocumentEquality();

  @override
  bool equals(ClubsnameRecord? e1, ClubsnameRecord? e2) {
    return e1?.clubsName == e2?.clubsName;
  }

  @override
  int hash(ClubsnameRecord? e) => const ListEquality().hash([e?.clubsName]);

  @override
  bool isValidKey(Object? o) => o is ClubsnameRecord;
}
