import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRecord extends FirestoreRecord {
  ChatRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "admin" field.
  String? _admin;
  String get admin => _admin ?? '';
  bool hasAdmin() => _admin != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  bool hasMsg() => _msg != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "admin_user" field.
  String? _adminUser;
  String get adminUser => _adminUser ?? '';
  bool hasAdminUser() => _adminUser != null;

  void _initializeFields() {
    _admin = snapshotData['admin'] as String?;
    _user = snapshotData['user'] as String?;
    _msg = snapshotData['msg'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _sender = snapshotData['sender'] as String?;
    _adminUser = snapshotData['admin_user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat');

  static Stream<ChatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRecord.fromSnapshot(s));

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRecord.fromSnapshot(s));

  static ChatRecord fromSnapshot(DocumentSnapshot snapshot) => ChatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRecordData({
  String? admin,
  String? user,
  String? msg,
  DateTime? time,
  String? sender,
  String? adminUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'admin': admin,
      'user': user,
      'msg': msg,
      'time': time,
      'sender': sender,
      'admin_user': adminUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRecordDocumentEquality implements Equality<ChatRecord> {
  const ChatRecordDocumentEquality();

  @override
  bool equals(ChatRecord? e1, ChatRecord? e2) {
    return e1?.admin == e2?.admin &&
        e1?.user == e2?.user &&
        e1?.msg == e2?.msg &&
        e1?.time == e2?.time &&
        e1?.sender == e2?.sender &&
        e1?.adminUser == e2?.adminUser;
  }

  @override
  int hash(ChatRecord? e) => const ListEquality()
      .hash([e?.admin, e?.user, e?.msg, e?.time, e?.sender, e?.adminUser]);

  @override
  bool isValidKey(Object? o) => o is ChatRecord;
}
