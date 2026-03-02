import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChildrenRecord extends FirestoreRecord {
  ChildrenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "child_name" field.
  String? _childName;
  String get childName => _childName ?? '';
  bool hasChildName() => _childName != null;

  // "child_age" field.
  String? _childAge;
  String get childAge => _childAge ?? '';
  bool hasChildAge() => _childAge != null;

  // "child_notes" field.
  String? _childNotes;
  String get childNotes => _childNotes ?? '';
  bool hasChildNotes() => _childNotes != null;

  // "child_likes" field.
  List<String>? _childLikes;
  List<String> get childLikes => _childLikes ?? const [];
  bool hasChildLikes() => _childLikes != null;

  // "parent" field.
  DocumentReference? _parent;
  DocumentReference? get parent => _parent;
  bool hasParent() => _parent != null;

  void _initializeFields() {
    _childName = snapshotData['child_name'] as String?;
    _childAge = snapshotData['child_age'] as String?;
    _childNotes = snapshotData['child_notes'] as String?;
    _childLikes = getDataList(snapshotData['child_likes']);
    _parent = snapshotData['parent'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('children');

  static Stream<ChildrenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChildrenRecord.fromSnapshot(s));

  static Future<ChildrenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChildrenRecord.fromSnapshot(s));

  static ChildrenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChildrenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChildrenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChildrenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChildrenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChildrenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChildrenRecordData({
  String? childName,
  String? childAge,
  String? childNotes,
  DocumentReference? parent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'child_name': childName,
      'child_age': childAge,
      'child_notes': childNotes,
      'parent': parent,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChildrenRecordDocumentEquality implements Equality<ChildrenRecord> {
  const ChildrenRecordDocumentEquality();

  @override
  bool equals(ChildrenRecord? e1, ChildrenRecord? e2) {
    const listEquality = ListEquality();
    return e1?.childName == e2?.childName &&
        e1?.childAge == e2?.childAge &&
        e1?.childNotes == e2?.childNotes &&
        listEquality.equals(e1?.childLikes, e2?.childLikes) &&
        e1?.parent == e2?.parent;
  }

  @override
  int hash(ChildrenRecord? e) => const ListEquality().hash(
      [e?.childName, e?.childAge, e?.childNotes, e?.childLikes, e?.parent]);

  @override
  bool isValidKey(Object? o) => o is ChildrenRecord;
}
