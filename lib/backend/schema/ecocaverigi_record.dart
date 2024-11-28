import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EcocaverigiRecord extends FirestoreRecord {
  EcocaverigiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "usn" field.
  String? _usn;
  String get usn => _usn ?? '';
  bool hasUsn() => _usn != null;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  bool hasBranch() => _branch != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "payment_utr" field.
  String? _paymentUtr;
  String get paymentUtr => _paymentUtr ?? '';
  bool hasPaymentUtr() => _paymentUtr != null;

  // "payment_image" field.
  String? _paymentImage;
  String get paymentImage => _paymentImage ?? '';
  bool hasPaymentImage() => _paymentImage != null;

  // "sem" field.
  String? _sem;
  String get sem => _sem ?? '';
  bool hasSem() => _sem != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _usn = snapshotData['usn'] as String?;
    _branch = snapshotData['branch'] as String?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _email = snapshotData['email'] as String?;
    _gender = snapshotData['gender'] as String?;
    _paymentUtr = snapshotData['payment_utr'] as String?;
    _paymentImage = snapshotData['payment_image'] as String?;
    _sem = snapshotData['sem'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ecocaverigi');

  static Stream<EcocaverigiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EcocaverigiRecord.fromSnapshot(s));

  static Future<EcocaverigiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EcocaverigiRecord.fromSnapshot(s));

  static EcocaverigiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EcocaverigiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EcocaverigiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EcocaverigiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EcocaverigiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EcocaverigiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEcocaverigiRecordData({
  String? name,
  String? usn,
  String? branch,
  int? phoneNumber,
  String? email,
  String? gender,
  String? paymentUtr,
  String? paymentImage,
  String? sem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'usn': usn,
      'branch': branch,
      'phone_number': phoneNumber,
      'email': email,
      'gender': gender,
      'payment_utr': paymentUtr,
      'payment_image': paymentImage,
      'sem': sem,
    }.withoutNulls,
  );

  return firestoreData;
}

class EcocaverigiRecordDocumentEquality implements Equality<EcocaverigiRecord> {
  const EcocaverigiRecordDocumentEquality();

  @override
  bool equals(EcocaverigiRecord? e1, EcocaverigiRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.usn == e2?.usn &&
        e1?.branch == e2?.branch &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.gender == e2?.gender &&
        e1?.paymentUtr == e2?.paymentUtr &&
        e1?.paymentImage == e2?.paymentImage &&
        e1?.sem == e2?.sem;
  }

  @override
  int hash(EcocaverigiRecord? e) => const ListEquality().hash([
        e?.name,
        e?.usn,
        e?.branch,
        e?.phoneNumber,
        e?.email,
        e?.gender,
        e?.paymentUtr,
        e?.paymentImage,
        e?.sem
      ]);

  @override
  bool isValidKey(Object? o) => o is EcocaverigiRecord;
}
