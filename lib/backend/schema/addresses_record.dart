import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressesRecord extends FirestoreRecord {
  AddressesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "street_name" field.
  String? _streetName;
  String get streetName => _streetName ?? '';
  bool hasStreetName() => _streetName != null;

  // "street_number" field.
  String? _streetNumber;
  String get streetNumber => _streetNumber ?? '';
  bool hasStreetNumber() => _streetNumber != null;

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

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "default_address" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  bool hasDefaultAddress() => _defaultAddress != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "parent" field.
  DocumentReference? _parent;
  DocumentReference? get parent => _parent;
  bool hasParent() => _parent != null;

  void _initializeFields() {
    _streetName = snapshotData['street_name'] as String?;
    _streetNumber = snapshotData['street_number'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _defaultAddress = snapshotData['default_address'] as bool?;
    _archived = snapshotData['archived'] as bool?;
    _parent = snapshotData['parent'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addresses');

  static Stream<AddressesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressesRecord.fromSnapshot(s));

  static Future<AddressesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressesRecord.fromSnapshot(s));

  static AddressesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressesRecordData({
  String? streetName,
  String? streetNumber,
  String? city,
  String? state,
  String? zipcode,
  DateTime? createdAt,
  bool? defaultAddress,
  bool? archived,
  DocumentReference? parent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'street_name': streetName,
      'street_number': streetNumber,
      'city': city,
      'state': state,
      'zipcode': zipcode,
      'created_at': createdAt,
      'default_address': defaultAddress,
      'archived': archived,
      'parent': parent,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressesRecordDocumentEquality implements Equality<AddressesRecord> {
  const AddressesRecordDocumentEquality();

  @override
  bool equals(AddressesRecord? e1, AddressesRecord? e2) {
    return e1?.streetName == e2?.streetName &&
        e1?.streetNumber == e2?.streetNumber &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.zipcode == e2?.zipcode &&
        e1?.createdAt == e2?.createdAt &&
        e1?.defaultAddress == e2?.defaultAddress &&
        e1?.archived == e2?.archived &&
        e1?.parent == e2?.parent;
  }

  @override
  int hash(AddressesRecord? e) => const ListEquality().hash([
        e?.streetName,
        e?.streetNumber,
        e?.city,
        e?.state,
        e?.zipcode,
        e?.createdAt,
        e?.defaultAddress,
        e?.archived,
        e?.parent
      ]);

  @override
  bool isValidKey(Object? o) => o is AddressesRecord;
}
