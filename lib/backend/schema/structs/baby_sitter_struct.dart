// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BabySitterStruct extends FFFirebaseStruct {
  BabySitterStruct({
    String? userid,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userid = userid,
        _name = name,
        super(firestoreUtilData);

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  set userid(String? val) => _userid = val;

  bool hasUserid() => _userid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static BabySitterStruct fromMap(Map<String, dynamic> data) =>
      BabySitterStruct(
        userid: data['userid'] as String?,
        name: data['name'] as String?,
      );

  static BabySitterStruct? maybeFromMap(dynamic data) => data is Map
      ? BabySitterStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userid': _userid,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userid': serializeParam(
          _userid,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static BabySitterStruct fromSerializableMap(Map<String, dynamic> data) =>
      BabySitterStruct(
        userid: deserializeParam(
          data['userid'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BabySitterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BabySitterStruct &&
        userid == other.userid &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([userid, name]);
}

BabySitterStruct createBabySitterStruct({
  String? userid,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BabySitterStruct(
      userid: userid,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BabySitterStruct? updateBabySitterStruct(
  BabySitterStruct? babySitter, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    babySitter
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBabySitterStructData(
  Map<String, dynamic> firestoreData,
  BabySitterStruct? babySitter,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (babySitter == null) {
    return;
  }
  if (babySitter.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && babySitter.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final babySitterData = getBabySitterFirestoreData(babySitter, forFieldValue);
  final nestedData = babySitterData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = babySitter.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBabySitterFirestoreData(
  BabySitterStruct? babySitter, [
  bool forFieldValue = false,
]) {
  if (babySitter == null) {
    return {};
  }
  final firestoreData = mapToFirestore(babySitter.toMap());

  // Add any Firestore field values
  babySitter.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBabySitterListFirestoreData(
  List<BabySitterStruct>? babySitters,
) =>
    babySitters?.map((e) => getBabySitterFirestoreData(e, true)).toList() ?? [];
