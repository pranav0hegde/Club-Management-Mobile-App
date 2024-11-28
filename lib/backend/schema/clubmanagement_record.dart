import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubmanagementRecord extends FirestoreRecord {
  ClubmanagementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "usn" field.
  String? _usn;
  String get usn => _usn ?? '';
  bool hasUsn() => _usn != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_photo" field.
  String? _userPhoto;
  String get userPhoto => _userPhoto ?? '';
  bool hasUserPhoto() => _userPhoto != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _usn = snapshotData['usn'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userPhoto = snapshotData['user_photo'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubmanagement');

  static Stream<ClubmanagementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubmanagementRecord.fromSnapshot(s));

  static Future<ClubmanagementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubmanagementRecord.fromSnapshot(s));

  static ClubmanagementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClubmanagementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubmanagementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubmanagementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubmanagementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubmanagementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubmanagementRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  DateTime? editedTime,
  String? usn,
  String? displayName,
  String? phoneNumber,
  String? userPhoto,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'edited_time': editedTime,
      'usn': usn,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'user_photo': userPhoto,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubmanagementRecordDocumentEquality
    implements Equality<ClubmanagementRecord> {
  const ClubmanagementRecordDocumentEquality();

  @override
  bool equals(ClubmanagementRecord? e1, ClubmanagementRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.usn == e2?.usn &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userPhoto == e2?.userPhoto &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(ClubmanagementRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.editedTime,
        e?.usn,
        e?.displayName,
        e?.phoneNumber,
        e?.userPhoto,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ClubmanagementRecord;
}
