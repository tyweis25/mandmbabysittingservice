// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildrenStruct extends FFFirebaseStruct {
  ChildrenStruct({
    String? childName,
    String? childAge,
    String? childNotes,
    List<String>? childLikes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _childName = childName,
        _childAge = childAge,
        _childNotes = childNotes,
        _childLikes = childLikes,
        super(firestoreUtilData);

  // "childName" field.
  String? _childName;
  String get childName => _childName ?? '';
  set childName(String? val) => _childName = val;

  bool hasChildName() => _childName != null;

  // "childAge" field.
  String? _childAge;
  String get childAge => _childAge ?? '';
  set childAge(String? val) => _childAge = val;

  bool hasChildAge() => _childAge != null;

  // "childNotes" field.
  String? _childNotes;
  String get childNotes => _childNotes ?? '';
  set childNotes(String? val) => _childNotes = val;

  bool hasChildNotes() => _childNotes != null;

  // "childLikes" field.
  List<String>? _childLikes;
  List<String> get childLikes => _childLikes ?? const [];
  set childLikes(List<String>? val) => _childLikes = val;

  void updateChildLikes(Function(List<String>) updateFn) {
    updateFn(_childLikes ??= []);
  }

  bool hasChildLikes() => _childLikes != null;

  static ChildrenStruct fromMap(Map<String, dynamic> data) => ChildrenStruct(
        childName: data['childName'] as String?,
        childAge: data['childAge'] as String?,
        childNotes: data['childNotes'] as String?,
        childLikes: getDataList(data['childLikes']),
      );

  static ChildrenStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChildrenStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'childName': _childName,
        'childAge': _childAge,
        'childNotes': _childNotes,
        'childLikes': _childLikes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'childName': serializeParam(
          _childName,
          ParamType.String,
        ),
        'childAge': serializeParam(
          _childAge,
          ParamType.String,
        ),
        'childNotes': serializeParam(
          _childNotes,
          ParamType.String,
        ),
        'childLikes': serializeParam(
          _childLikes,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ChildrenStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChildrenStruct(
        childName: deserializeParam(
          data['childName'],
          ParamType.String,
          false,
        ),
        childAge: deserializeParam(
          data['childAge'],
          ParamType.String,
          false,
        ),
        childNotes: deserializeParam(
          data['childNotes'],
          ParamType.String,
          false,
        ),
        childLikes: deserializeParam<String>(
          data['childLikes'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ChildrenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChildrenStruct &&
        childName == other.childName &&
        childAge == other.childAge &&
        childNotes == other.childNotes &&
        listEquality.equals(childLikes, other.childLikes);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([childName, childAge, childNotes, childLikes]);
}

ChildrenStruct createChildrenStruct({
  String? childName,
  String? childAge,
  String? childNotes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChildrenStruct(
      childName: childName,
      childAge: childAge,
      childNotes: childNotes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChildrenStruct? updateChildrenStruct(
  ChildrenStruct? children, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    children
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChildrenStructData(
  Map<String, dynamic> firestoreData,
  ChildrenStruct? children,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (children == null) {
    return;
  }
  if (children.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && children.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final childrenData = getChildrenFirestoreData(children, forFieldValue);
  final nestedData = childrenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = children.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChildrenFirestoreData(
  ChildrenStruct? children, [
  bool forFieldValue = false,
]) {
  if (children == null) {
    return {};
  }
  final firestoreData = mapToFirestore(children.toMap());

  // Add any Firestore field values
  children.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChildrenListFirestoreData(
  List<ChildrenStruct>? childrens,
) =>
    childrens?.map((e) => getChildrenFirestoreData(e, true)).toList() ?? [];
