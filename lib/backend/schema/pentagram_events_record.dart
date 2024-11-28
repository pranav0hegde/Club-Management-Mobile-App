import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PentagramEventsRecord extends FirestoreRecord {
  PentagramEventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "club_member" field.
  int? _clubMember;
  int get clubMember => _clubMember ?? 0;
  bool hasClubMember() => _clubMember != null;

  // "No_events" field.
  int? _noEvents;
  int get noEvents => _noEvents ?? 0;
  bool hasNoEvents() => _noEvents != null;

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
    _clubMember = castToType<int>(snapshotData['club_member']);
    _noEvents = castToType<int>(snapshotData['No_events']);
    _clubName = snapshotData['club_name'] as String?;
    _eventName = snapshotData['Event_name'] as String?;
    _eventImage = snapshotData['event_image'] as String?;
    _eventDeadlilne = snapshotData['event_deadlilne'] as DateTime?;
    _eventDiscription = snapshotData['event_discription'] as String?;
    _eventCost = snapshotData['event_cost'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pentagram_events');

  static Stream<PentagramEventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PentagramEventsRecord.fromSnapshot(s));

  static Future<PentagramEventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PentagramEventsRecord.fromSnapshot(s));

  static PentagramEventsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PentagramEventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PentagramEventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PentagramEventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PentagramEventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PentagramEventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPentagramEventsRecordData({
  int? clubMember,
  int? noEvents,
  String? clubName,
  String? eventName,
  String? eventImage,
  DateTime? eventDeadlilne,
  String? eventDiscription,
  String? eventCost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'club_member': clubMember,
      'No_events': noEvents,
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

class PentagramEventsRecordDocumentEquality
    implements Equality<PentagramEventsRecord> {
  const PentagramEventsRecordDocumentEquality();

  @override
  bool equals(PentagramEventsRecord? e1, PentagramEventsRecord? e2) {
    return e1?.clubMember == e2?.clubMember &&
        e1?.noEvents == e2?.noEvents &&
        e1?.clubName == e2?.clubName &&
        e1?.eventName == e2?.eventName &&
        e1?.eventImage == e2?.eventImage &&
        e1?.eventDeadlilne == e2?.eventDeadlilne &&
        e1?.eventDiscription == e2?.eventDiscription &&
        e1?.eventCost == e2?.eventCost;
  }

  @override
  int hash(PentagramEventsRecord? e) => const ListEquality().hash([
        e?.clubMember,
        e?.noEvents,
        e?.clubName,
        e?.eventName,
        e?.eventImage,
        e?.eventDeadlilne,
        e?.eventDiscription,
        e?.eventCost
      ]);

  @override
  bool isValidKey(Object? o) => o is PentagramEventsRecord;
}
