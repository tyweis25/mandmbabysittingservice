// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProfileDataStruct extends FFFirebaseStruct {
  ProfileDataStruct({
    String? image,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ProfileDataStruct fromMap(Map<String, dynamic> data) =>
      ProfileDataStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
      );

  static ProfileDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileDataStruct(
        image: deserializeParam(
          data['image'],
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
  String toString() => 'ProfileDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileDataStruct &&
        image == other.image &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name]);
}

ProfileDataStruct createProfileDataStruct({
  String? image,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProfileDataStruct(
      image: image,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProfileDataStruct? updateProfileDataStruct(
  ProfileDataStruct? profileData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    profileData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProfileDataStructData(
  Map<String, dynamic> firestoreData,
  ProfileDataStruct? profileData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (profileData == null) {
    return;
  }
  if (profileData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && profileData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final profileDataData =
      getProfileDataFirestoreData(profileData, forFieldValue);
  final nestedData =
      profileDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = profileData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProfileDataFirestoreData(
  ProfileDataStruct? profileData, [
  bool forFieldValue = false,
]) {
  if (profileData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(profileData.toMap());

  // Add any Firestore field values
  profileData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProfileDataListFirestoreData(
  List<ProfileDataStruct>? profileDatas,
) =>
    profileDatas?.map((e) => getProfileDataFirestoreData(e, true)).toList() ??
    [];
