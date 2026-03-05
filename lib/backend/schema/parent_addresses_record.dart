import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParentAddressesRecord extends FirestoreRecord {
  ParentAddressesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  bool hasZipcode() => _zipcode != null;

  // "parentRef" field.
  DocumentReference? _parentRef;
  DocumentReference? get parentRef => _parentRef;
  bool hasParentRef() => _parentRef != null;

  // "streetNumber" field.
  String? _streetNumber;
  String get streetNumber => _streetNumber ?? '';
  bool hasStreetNumber() => _streetNumber != null;

  // "streetName" field.
  String? _streetName;
  String get streetName => _streetName ?? '';
  bool hasStreetName() => _streetName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _parentRef = snapshotData['parentRef'] as DocumentReference?;
    _streetNumber = snapshotData['streetNumber'] as String?;
    _streetName = snapshotData['streetName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('parent_addresses')
          : FirebaseFirestore.instance.collectionGroup('parent_addresses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('parent_addresses').doc(id);

  static Stream<ParentAddressesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParentAddressesRecord.fromSnapshot(s));

  static Future<ParentAddressesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParentAddressesRecord.fromSnapshot(s));

  static ParentAddressesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParentAddressesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParentAddressesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParentAddressesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParentAddressesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParentAddressesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParentAddressesRecordData({
  String? city,
  String? state,
  String? zipcode,
  DocumentReference? parentRef,
  String? streetNumber,
  String? streetName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'state': state,
      'zipcode': zipcode,
      'parentRef': parentRef,
      'streetNumber': streetNumber,
      'streetName': streetName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParentAddressesRecordDocumentEquality
    implements Equality<ParentAddressesRecord> {
  const ParentAddressesRecordDocumentEquality();

  @override
  bool equals(ParentAddressesRecord? e1, ParentAddressesRecord? e2) {
    return e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zipcode == e2?.zipcode &&
        e1?.parentRef == e2?.parentRef &&
        e1?.streetNumber == e2?.streetNumber &&
        e1?.streetName == e2?.streetName;
  }

  @override
  int hash(ParentAddressesRecord? e) => const ListEquality().hash([
        e?.city,
        e?.state,
        e?.zipcode,
        e?.parentRef,
        e?.streetNumber,
        e?.streetName
      ]);

  @override
  bool isValidKey(Object? o) => o is ParentAddressesRecord;
}
