// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AvailableTimeslotsDataStruct extends FFFirebaseStruct {
  AvailableTimeslotsDataStruct({
    DateTime? selectedDate,
    DateTime? end,
    DateTime? start,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selectedDate = selectedDate,
        _end = end,
        _start = start,
        super(firestoreUtilData);

  // "selectedDate" field.
  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? val) => _selectedDate = val;

  bool hasSelectedDate() => _selectedDate != null;

  // "end" field.
  DateTime? _end;
  DateTime? get end => _end;
  set end(DateTime? val) => _end = val;

  bool hasEnd() => _end != null;

  // "start" field.
  DateTime? _start;
  DateTime? get start => _start;
  set start(DateTime? val) => _start = val;

  bool hasStart() => _start != null;

  static AvailableTimeslotsDataStruct fromMap(Map<String, dynamic> data) =>
      AvailableTimeslotsDataStruct(
        selectedDate: data['selectedDate'] as DateTime?,
        end: data['end'] as DateTime?,
        start: data['start'] as DateTime?,
      );

  static AvailableTimeslotsDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AvailableTimeslotsDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedDate': _selectedDate,
        'end': _end,
        'start': _start,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedDate': serializeParam(
          _selectedDate,
          ParamType.DateTime,
        ),
        'end': serializeParam(
          _end,
          ParamType.DateTime,
        ),
        'start': serializeParam(
          _start,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AvailableTimeslotsDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AvailableTimeslotsDataStruct(
        selectedDate: deserializeParam(
          data['selectedDate'],
          ParamType.DateTime,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.DateTime,
          false,
        ),
        start: deserializeParam(
          data['start'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AvailableTimeslotsDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AvailableTimeslotsDataStruct &&
        selectedDate == other.selectedDate &&
        end == other.end &&
        start == other.start;
  }

  @override
  int get hashCode => const ListEquality().hash([selectedDate, end, start]);
}

AvailableTimeslotsDataStruct createAvailableTimeslotsDataStruct({
  DateTime? selectedDate,
  DateTime? end,
  DateTime? start,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AvailableTimeslotsDataStruct(
      selectedDate: selectedDate,
      end: end,
      start: start,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AvailableTimeslotsDataStruct? updateAvailableTimeslotsDataStruct(
  AvailableTimeslotsDataStruct? availableTimeslotsData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    availableTimeslotsData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAvailableTimeslotsDataStructData(
  Map<String, dynamic> firestoreData,
  AvailableTimeslotsDataStruct? availableTimeslotsData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (availableTimeslotsData == null) {
    return;
  }
  if (availableTimeslotsData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      availableTimeslotsData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final availableTimeslotsDataData = getAvailableTimeslotsDataFirestoreData(
      availableTimeslotsData, forFieldValue);
  final nestedData =
      availableTimeslotsDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      availableTimeslotsData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAvailableTimeslotsDataFirestoreData(
  AvailableTimeslotsDataStruct? availableTimeslotsData, [
  bool forFieldValue = false,
]) {
  if (availableTimeslotsData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(availableTimeslotsData.toMap());

  // Add any Firestore field values
  availableTimeslotsData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAvailableTimeslotsDataListFirestoreData(
  List<AvailableTimeslotsDataStruct>? availableTimeslotsDatas,
) =>
    availableTimeslotsDatas
        ?.map((e) => getAvailableTimeslotsDataFirestoreData(e, true))
        .toList() ??
    [];
