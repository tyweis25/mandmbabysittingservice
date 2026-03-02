// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationsData2Struct extends FFFirebaseStruct {
  NotificationsData2Struct({
    String? msg,
    String? detail,
    String? time,
    String? uid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _msg = msg,
        _detail = detail,
        _time = time,
        _uid = uid,
        super(firestoreUtilData);

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  set msg(String? val) => _msg = val;

  bool hasMsg() => _msg != null;

  // "detail" field.
  String? _detail;
  String get detail => _detail ?? '';
  set detail(String? val) => _detail = val;

  bool hasDetail() => _detail != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  static NotificationsData2Struct fromMap(Map<String, dynamic> data) =>
      NotificationsData2Struct(
        msg: data['msg'] as String?,
        detail: data['detail'] as String?,
        time: data['time'] as String?,
        uid: data['uid'] as String?,
      );

  static NotificationsData2Struct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsData2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'msg': _msg,
        'detail': _detail,
        'time': _time,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'msg': serializeParam(
          _msg,
          ParamType.String,
        ),
        'detail': serializeParam(
          _detail,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationsData2Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationsData2Struct(
        msg: deserializeParam(
          data['msg'],
          ParamType.String,
          false,
        ),
        detail: deserializeParam(
          data['detail'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsData2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsData2Struct &&
        msg == other.msg &&
        detail == other.detail &&
        time == other.time &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([msg, detail, time, uid]);
}

NotificationsData2Struct createNotificationsData2Struct({
  String? msg,
  String? detail,
  String? time,
  String? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationsData2Struct(
      msg: msg,
      detail: detail,
      time: time,
      uid: uid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationsData2Struct? updateNotificationsData2Struct(
  NotificationsData2Struct? notificationsData2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationsData2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationsData2StructData(
  Map<String, dynamic> firestoreData,
  NotificationsData2Struct? notificationsData2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationsData2 == null) {
    return;
  }
  if (notificationsData2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notificationsData2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationsData2Data =
      getNotificationsData2FirestoreData(notificationsData2, forFieldValue);
  final nestedData =
      notificationsData2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      notificationsData2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationsData2FirestoreData(
  NotificationsData2Struct? notificationsData2, [
  bool forFieldValue = false,
]) {
  if (notificationsData2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationsData2.toMap());

  // Add any Firestore field values
  notificationsData2.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationsData2ListFirestoreData(
  List<NotificationsData2Struct>? notificationsData2s,
) =>
    notificationsData2s
        ?.map((e) => getNotificationsData2FirestoreData(e, true))
        .toList() ??
    [];
