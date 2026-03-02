import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvailabilitySlotsRecord extends FirestoreRecord {
  AvailabilitySlotsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "end" field.
  DateTime? _end;
  DateTime? get end => _end;
  bool hasEnd() => _end != null;

  // "start" field.
  DateTime? _start;
  DateTime? get start => _start;
  bool hasStart() => _start != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  void _initializeFields() {
    _end = snapshotData['end'] as DateTime?;
    _start = snapshotData['start'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userid = snapshotData['userid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('availability_slots');

  static Stream<AvailabilitySlotsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvailabilitySlotsRecord.fromSnapshot(s));

  static Future<AvailabilitySlotsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AvailabilitySlotsRecord.fromSnapshot(s));

  static AvailabilitySlotsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvailabilitySlotsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvailabilitySlotsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvailabilitySlotsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvailabilitySlotsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvailabilitySlotsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvailabilitySlotsRecordData({
  DateTime? end,
  DateTime? start,
  String? status,
  String? userid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'end': end,
      'start': start,
      'status': status,
      'userid': userid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvailabilitySlotsRecordDocumentEquality
    implements Equality<AvailabilitySlotsRecord> {
  const AvailabilitySlotsRecordDocumentEquality();

  @override
  bool equals(AvailabilitySlotsRecord? e1, AvailabilitySlotsRecord? e2) {
    return e1?.end == e2?.end &&
        e1?.start == e2?.start &&
        e1?.status == e2?.status &&
        e1?.userid == e2?.userid;
  }

  @override
  int hash(AvailabilitySlotsRecord? e) =>
      const ListEquality().hash([e?.end, e?.start, e?.status, e?.userid]);

  @override
  bool isValidKey(Object? o) => o is AvailabilitySlotsRecord;
}
