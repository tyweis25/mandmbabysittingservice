// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationDataStruct extends FFFirebaseStruct {
  NotificationDataStruct({
    String? msg,
    String? detail,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _msg = msg,
        _detail = detail,
        _time = time,
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

  static NotificationDataStruct fromMap(Map<String, dynamic> data) =>
      NotificationDataStruct(
        msg: data['msg'] as String?,
        detail: data['detail'] as String?,
        time: data['time'] as String?,
      );

  static NotificationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'msg': _msg,
        'detail': _detail,
        'time': _time,
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
      }.withoutNulls;

  static NotificationDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationDataStruct(
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
      );

  @override
  String toString() => 'NotificationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationDataStruct &&
        msg == other.msg &&
        detail == other.detail &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([msg, detail, time]);
}

NotificationDataStruct createNotificationDataStruct({
  String? msg,
  String? detail,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationDataStruct(
      msg: msg,
      detail: detail,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationDataStruct? updateNotificationDataStruct(
  NotificationDataStruct? notificationData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notificationData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationDataStructData(
  Map<String, dynamic> firestoreData,
  NotificationDataStruct? notificationData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notificationData == null) {
    return;
  }
  if (notificationData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notificationData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationDataData =
      getNotificationDataFirestoreData(notificationData, forFieldValue);
  final nestedData =
      notificationDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notificationData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationDataFirestoreData(
  NotificationDataStruct? notificationData, [
  bool forFieldValue = false,
]) {
  if (notificationData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notificationData.toMap());

  // Add any Firestore field values
  notificationData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationDataListFirestoreData(
  List<NotificationDataStruct>? notificationDatas,
) =>
    notificationDatas
        ?.map((e) => getNotificationDataFirestoreData(e, true))
        .toList() ??
    [];
