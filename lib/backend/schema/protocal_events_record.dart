import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProtocalEventsRecord extends FirestoreRecord {
  ProtocalEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "club_name" field.
  String? _clubName;
  String get clubName => _clubName ?? '';
  bool hasClubName() => _clubName != null;

  // "Event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_image" field.
  String? _eventImage;
  String get eventImage => _eventImage ?? '';
  bool hasEventImage() => _eventImage != null;

  // "event_deadlilne" field.
  DateTime? _eventDeadlilne;
  DateTime? get eventDeadlilne => _eventDeadlilne;
  bool hasEventDeadlilne() => _eventDeadlilne != null;

  // "event_discription" field.
  String? _eventDiscription;
  String get eventDiscription => _eventDiscription ?? '';
  bool hasEventDiscription() => _eventDiscription != null;

  // "event_cost" field.
  String? _eventCost;
  String get eventCost => _eventCost ?? '';
  bool hasEventCost() => _eventCost != null;

  void _initializeFields() {
    _clubName = snapshotData['club_name'] as String?;
    _eventName = snapshotData['Event_name'] as String?;
    _eventImage = snapshotData['event_image'] as String?;
    _eventDeadlilne = snapshotData['event_deadlilne'] as DateTime?;
    _eventDiscription = snapshotData['event_discription'] as String?;
    _eventCost = snapshotData['event_cost'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('protocal_events');

  static Stream<ProtocalEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProtocalEventsRecord.fromSnapshot(s));

  static Future<ProtocalEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProtocalEventsRecord.fromSnapshot(s));

  static ProtocalEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProtocalEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProtocalEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProtocalEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProtocalEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProtocalEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProtocalEventsRecordData({
  String? clubName,
  String? eventName,
  String? eventImage,
  DateTime? eventDeadlilne,
  String? eventDiscription,
  String? eventCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'club_name': clubName,
      'Event_name': eventName,
      'event_image': eventImage,
      'event_deadlilne': eventDeadlilne,
      'event_discription': eventDiscription,
      'event_cost': eventCost,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProtocalEventsRecordDocumentEquality
    implements Equality<ProtocalEventsRecord> {
  const ProtocalEventsRecordDocumentEquality();

  @override
  bool equals(ProtocalEventsRecord? e1, ProtocalEventsRecord? e2) {
    return e1?.clubName == e2?.clubName &&
        e1?.eventName == e2?.eventName &&
        e1?.eventImage == e2?.eventImage &&
        e1?.eventDeadlilne == e2?.eventDeadlilne &&
        e1?.eventDiscription == e2?.eventDiscription &&
        e1?.eventCost == e2?.eventCost;
  }

  @override
  int hash(ProtocalEventsRecord? e) => const ListEquality().hash([
        e?.clubName,
        e?.eventName,
        e?.eventImage,
        e?.eventDeadlilne,
        e?.eventDiscription,
        e?.eventCost
      ]);

  @override
  bool isValidKey(Object? o) => o is ProtocalEventsRecord;
}
