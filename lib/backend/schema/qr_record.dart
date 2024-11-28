import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrRecord extends FirestoreRecord {
  QrRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "qr" field.
  String? _qr;
  String get qr => _qr ?? '';
  bool hasQr() => _qr != null;

  void _initializeFields() {
    _qr = snapshotData['qr'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qr');

  static Stream<QrRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QrRecord.fromSnapshot(s));

  static Future<QrRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QrRecord.fromSnapshot(s));

  static QrRecord fromSnapshot(DocumentSnapshot snapshot) => QrRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QrRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QrRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QrRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QrRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQrRecordData({
  String? qr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'qr': qr,
    }.withoutNulls,
  );

  return firestoreData;
}

class QrRecordDocumentEquality implements Equality<QrRecord> {
  const QrRecordDocumentEquality();

  @override
  bool equals(QrRecord? e1, QrRecord? e2) {
    return e1?.qr == e2?.qr;
  }

  @override
  int hash(QrRecord? e) => const ListEquality().hash([e?.qr]);

  @override
  bool isValidKey(Object? o) => o is QrRecord;
}
