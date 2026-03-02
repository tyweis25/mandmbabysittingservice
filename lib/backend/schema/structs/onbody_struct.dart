// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OnbodyStruct extends FFFirebaseStruct {
  OnbodyStruct({
    int? id,
    String? img,
    String? title,
    String? text,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _img = img,
        _title = title,
        _text = text,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  static OnbodyStruct fromMap(Map<String, dynamic> data) => OnbodyStruct(
        id: castToType<int>(data['id']),
        img: data['img'] as String?,
        title: data['title'] as String?,
        text: data['text'] as String?,
      );

  static OnbodyStruct? maybeFromMap(dynamic data) =>
      data is Map ? OnbodyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'img': _img,
        'title': _title,
        'text': _text,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
      }.withoutNulls;

  static OnbodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnbodyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OnbodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnbodyStruct &&
        id == other.id &&
        img == other.img &&
        title == other.title &&
        text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([id, img, title, text]);
}

OnbodyStruct createOnbodyStruct({
  int? id,
  String? img,
  String? title,
  String? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnbodyStruct(
      id: id,
      img: img,
      title: title,
      text: text,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OnbodyStruct? updateOnbodyStruct(
  OnbodyStruct? onbody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onbody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnbodyStructData(
  Map<String, dynamic> firestoreData,
  OnbodyStruct? onbody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onbody == null) {
    return;
  }
  if (onbody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && onbody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onbodyData = getOnbodyFirestoreData(onbody, forFieldValue);
  final nestedData = onbodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = onbody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnbodyFirestoreData(
  OnbodyStruct? onbody, [
  bool forFieldValue = false,
]) {
  if (onbody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onbody.toMap());

  // Add any Firestore field values
  onbody.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnbodyListFirestoreData(
  List<OnbodyStruct>? onbodys,
) =>
    onbodys?.map((e) => getOnbodyFirestoreData(e, true)).toList() ?? [];
