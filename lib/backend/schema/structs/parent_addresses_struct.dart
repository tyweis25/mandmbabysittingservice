// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParentAddressesStruct extends FFFirebaseStruct {
  ParentAddressesStruct({
    String? streetName,
    String? streetNumber,
    String? city,
    String? state,
    String? zipcode,
    DateTime? createdAt,
    DocumentReference? parentRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _streetName = streetName,
        _streetNumber = streetNumber,
        _city = city,
        _state = state,
        _zipcode = zipcode,
        _createdAt = createdAt,
        _parentRef = parentRef,
        super(firestoreUtilData);

  // "streetName" field.
  String? _streetName;
  String get streetName => _streetName ?? '';
  set streetName(String? val) => _streetName = val;

  bool hasStreetName() => _streetName != null;

  // "streetNumber" field.
  String? _streetNumber;
  String get streetNumber => _streetNumber ?? '';
  set streetNumber(String? val) => _streetNumber = val;

  bool hasStreetNumber() => _streetNumber != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  set zipcode(String? val) => _zipcode = val;

  bool hasZipcode() => _zipcode != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "parentRef" field.
  DocumentReference? _parentRef;
  DocumentReference? get parentRef => _parentRef;
  set parentRef(DocumentReference? val) => _parentRef = val;

  bool hasParentRef() => _parentRef != null;

  static ParentAddressesStruct fromMap(Map<String, dynamic> data) =>
      ParentAddressesStruct(
        streetName: data['streetName'] as String?,
        streetNumber: data['streetNumber'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        zipcode: data['zipcode'] as String?,
        createdAt: data['created_at'] as DateTime?,
        parentRef: data['parentRef'] as DocumentReference?,
      );

  static ParentAddressesStruct? maybeFromMap(dynamic data) => data is Map
      ? ParentAddressesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'streetName': _streetName,
        'streetNumber': _streetNumber,
        'city': _city,
        'state': _state,
        'zipcode': _zipcode,
        'created_at': _createdAt,
        'parentRef': _parentRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'streetName': serializeParam(
          _streetName,
          ParamType.String,
        ),
        'streetNumber': serializeParam(
          _streetNumber,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'zipcode': serializeParam(
          _zipcode,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'parentRef': serializeParam(
          _parentRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ParentAddressesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParentAddressesStruct(
        streetName: deserializeParam(
          data['streetName'],
          ParamType.String,
          false,
        ),
        streetNumber: deserializeParam(
          data['streetNumber'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        zipcode: deserializeParam(
          data['zipcode'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        parentRef: deserializeParam(
          data['parentRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'ParentAddressesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParentAddressesStruct &&
        streetName == other.streetName &&
        streetNumber == other.streetNumber &&
        city == other.city &&
        state == other.state &&
        zipcode == other.zipcode &&
        createdAt == other.createdAt &&
        parentRef == other.parentRef;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [streetName, streetNumber, city, state, zipcode, createdAt, parentRef]);
}

ParentAddressesStruct createParentAddressesStruct({
  String? streetName,
  String? streetNumber,
  String? city,
  String? state,
  String? zipcode,
  DateTime? createdAt,
  DocumentReference? parentRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParentAddressesStruct(
      streetName: streetName,
      streetNumber: streetNumber,
      city: city,
      state: state,
      zipcode: zipcode,
      createdAt: createdAt,
      parentRef: parentRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParentAddressesStruct? updateParentAddressesStruct(
  ParentAddressesStruct? parentAddresses, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    parentAddresses
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParentAddressesStructData(
  Map<String, dynamic> firestoreData,
  ParentAddressesStruct? parentAddresses,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (parentAddresses == null) {
    return;
  }
  if (parentAddresses.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && parentAddresses.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final parentAddressesData =
      getParentAddressesFirestoreData(parentAddresses, forFieldValue);
  final nestedData =
      parentAddressesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = parentAddresses.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParentAddressesFirestoreData(
  ParentAddressesStruct? parentAddresses, [
  bool forFieldValue = false,
]) {
  if (parentAddresses == null) {
    return {};
  }
  final firestoreData = mapToFirestore(parentAddresses.toMap());

  // Add any Firestore field values
  parentAddresses.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParentAddressesListFirestoreData(
  List<ParentAddressesStruct>? parentAddressess,
) =>
    parentAddressess
        ?.map((e) => getParentAddressesFirestoreData(e, true))
        .toList() ??
    [];
