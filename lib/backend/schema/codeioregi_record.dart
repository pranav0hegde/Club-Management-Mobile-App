import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CodeioregiRecord extends FirestoreRecord {
  CodeioregiRecord._(
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

  // "phonenumber" field.
  int? _phonenumber;
  int get phonenumber => _phonenumber ?? 0;
  bool hasPhonenumber() => _phonenumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "qr" field.
  DocumentReference? _qr;
  DocumentReference? get qr => _qr;
  bool hasQr() => _qr != null;

  // "qrutr" field.
  String? _qrutr;
  String get qrutr => _qrutr ?? '';
  bool hasQrutr() => _qrutr != null;

  // "paymentscreenshot" field.
  String? _paymentscreenshot;
  String get paymentscreenshot => _paymentscreenshot ?? '';
  bool hasPaymentscreenshot() => _paymentscreenshot != null;

  // "sem" field.
  String? _sem;
  String get sem => _sem ?? '';
  bool hasSem() => _sem != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _usn = snapshotData['usn'] as String?;
    _branch = snapshotData['branch'] as String?;
    _phonenumber = castToType<int>(snapshotData['phonenumber']);
    _email = snapshotData['email'] as String?;
    _gender = snapshotData['gender'] as String?;
    _qr = snapshotData['qr'] as DocumentReference?;
    _qrutr = snapshotData['qrutr'] as String?;
    _paymentscreenshot = snapshotData['paymentscreenshot'] as String?;
    _sem = snapshotData['sem'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('codeioregi');

  static Stream<CodeioregiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CodeioregiRecord.fromSnapshot(s));

  static Future<CodeioregiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CodeioregiRecord.fromSnapshot(s));

  static CodeioregiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CodeioregiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CodeioregiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CodeioregiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CodeioregiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CodeioregiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCodeioregiRecordData({
  String? name,
  String? usn,
  String? branch,
  int? phonenumber,
  String? email,
  String? gender,
  DocumentReference? qr,
  String? qrutr,
  String? paymentscreenshot,
  String? sem,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'usn': usn,
      'branch': branch,
      'phonenumber': phonenumber,
      'email': email,
      'gender': gender,
      'qr': qr,
      'qrutr': qrutr,
      'paymentscreenshot': paymentscreenshot,
      'sem': sem,
    }.withoutNulls,
  );

  return firestoreData;
}

class CodeioregiRecordDocumentEquality implements Equality<CodeioregiRecord> {
  const CodeioregiRecordDocumentEquality();

  @override
  bool equals(CodeioregiRecord? e1, CodeioregiRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.usn == e2?.usn &&
        e1?.branch == e2?.branch &&
        e1?.phonenumber == e2?.phonenumber &&
        e1?.email == e2?.email &&
        e1?.gender == e2?.gender &&
        e1?.qr == e2?.qr &&
        e1?.qrutr == e2?.qrutr &&
        e1?.paymentscreenshot == e2?.paymentscreenshot &&
        e1?.sem == e2?.sem;
  }

  @override
  int hash(CodeioregiRecord? e) => const ListEquality().hash([
        e?.name,
        e?.usn,
        e?.branch,
        e?.phonenumber,
        e?.email,
        e?.gender,
        e?.qr,
        e?.qrutr,
        e?.paymentscreenshot,
        e?.sem
      ]);

  @override
  bool isValidKey(Object? o) => o is CodeioregiRecord;
}
