// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChatModelStruct extends FFFirebaseStruct {
  ChatModelStruct({
    int? id,
    String? img,
    String? title,
    String? text,
    String? time,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _img = img,
        _title = title,
        _text = text,
        _time = time,
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

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  static ChatModelStruct fromMap(Map<String, dynamic> data) => ChatModelStruct(
        id: castToType<int>(data['id']),
        img: data['img'] as String?,
        title: data['title'] as String?,
        text: data['text'] as String?,
        time: data['time'] as String?,
      );

  static ChatModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'img': _img,
        'title': _title,
        'text': _text,
        'time': _time,
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
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatModelStruct(
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
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatModelStruct &&
        id == other.id &&
        img == other.img &&
        title == other.title &&
        text == other.text &&
        time == other.time;
  }

  @override
  int get hashCode => const ListEquality().hash([id, img, title, text, time]);
}

ChatModelStruct createChatModelStruct({
  int? id,
  String? img,
  String? title,
  String? text,
  String? time,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatModelStruct(
      id: id,
      img: img,
      title: title,
      text: text,
      time: time,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatModelStruct? updateChatModelStruct(
  ChatModelStruct? chatModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatModelStructData(
  Map<String, dynamic> firestoreData,
  ChatModelStruct? chatModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatModel == null) {
    return;
  }
  if (chatModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatModelData = getChatModelFirestoreData(chatModel, forFieldValue);
  final nestedData = chatModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatModelFirestoreData(
  ChatModelStruct? chatModel, [
  bool forFieldValue = false,
]) {
  if (chatModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatModel.toMap());

  // Add any Firestore field values
  chatModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatModelListFirestoreData(
  List<ChatModelStruct>? chatModels,
) =>
    chatModels?.map((e) => getChatModelFirestoreData(e, true)).toList() ?? [];
