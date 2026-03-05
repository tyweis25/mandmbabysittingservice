import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "booking_id" field.
  String? _bookingId;
  String get bookingId => _bookingId ?? '';
  bool hasBookingId() => _bookingId != null;

  // "rate_per_hour" field.
  double? _ratePerHour;
  double get ratePerHour => _ratePerHour ?? 0.0;
  bool hasRatePerHour() => _ratePerHour != null;

  // "num_of_children" field.
  int? _numOfChildren;
  int get numOfChildren => _numOfChildren ?? 0;
  bool hasNumOfChildren() => _numOfChildren != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "date_of_service" field.
  DateTime? _dateOfService;
  DateTime? get dateOfService => _dateOfService;
  bool hasDateOfService() => _dateOfService != null;

  // "parent_notes" field.
  String? _parentNotes;
  String get parentNotes => _parentNotes ?? '';
  bool hasParentNotes() => _parentNotes != null;

  // "babysitter_notes" field.
  String? _babysitterNotes;
  String get babysitterNotes => _babysitterNotes ?? '';
  bool hasBabysitterNotes() => _babysitterNotes != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "cancelled_at" field.
  DateTime? _cancelledAt;
  DateTime? get cancelledAt => _cancelledAt;
  bool hasCancelledAt() => _cancelledAt != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "children" field.
  List<String>? _children;
  List<String> get children => _children ?? const [];
  bool hasChildren() => _children != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  // "type_of_service" field.
  String? _typeOfService;
  String get typeOfService => _typeOfService ?? '';
  bool hasTypeOfService() => _typeOfService != null;

  // "num_of_hours" field.
  double? _numOfHours;
  double get numOfHours => _numOfHours ?? 0.0;
  bool hasNumOfHours() => _numOfHours != null;

  // "babysitterId" field.
  String? _babysitterId;
  String get babysitterId => _babysitterId ?? '';
  bool hasBabysitterId() => _babysitterId != null;

  // "parentId" field.
  String? _parentId;
  String get parentId => _parentId ?? '';
  bool hasParentId() => _parentId != null;

  // "address" field.
  DocumentReference? _address;
  DocumentReference? get address => _address;
  bool hasAddress() => _address != null;

  void _initializeFields() {
    _bookingId = snapshotData['booking_id'] as String?;
    _ratePerHour = castToType<double>(snapshotData['rate_per_hour']);
    _numOfChildren = castToType<int>(snapshotData['num_of_children']);
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _dateOfService = snapshotData['date_of_service'] as DateTime?;
    _parentNotes = snapshotData['parent_notes'] as String?;
    _babysitterNotes = snapshotData['babysitter_notes'] as String?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _cancelledAt = snapshotData['cancelled_at'] as DateTime?;
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _children = getDataList(snapshotData['children']);
    _status = snapshotData['status'] is Status
        ? snapshotData['status']
        : deserializeEnum<Status>(snapshotData['status']);
    _typeOfService = snapshotData['type_of_service'] as String?;
    _numOfHours = castToType<double>(snapshotData['num_of_hours']);
    _babysitterId = snapshotData['babysitterId'] as String?;
    _parentId = snapshotData['parentId'] as String?;
    _address = snapshotData['address'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? bookingId,
  double? ratePerHour,
  int? numOfChildren,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? createdTime,
  DateTime? dateOfService,
  String? parentNotes,
  String? babysitterNotes,
  DateTime? modifiedAt,
  DateTime? cancelledAt,
  double? totalPrice,
  Status? status,
  String? typeOfService,
  double? numOfHours,
  String? babysitterId,
  String? parentId,
  DocumentReference? address,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'booking_id': bookingId,
      'rate_per_hour': ratePerHour,
      'num_of_children': numOfChildren,
      'start_time': startTime,
      'end_time': endTime,
      'created_time': createdTime,
      'date_of_service': dateOfService,
      'parent_notes': parentNotes,
      'babysitter_notes': babysitterNotes,
      'modified_at': modifiedAt,
      'cancelled_at': cancelledAt,
      'total_price': totalPrice,
      'status': status,
      'type_of_service': typeOfService,
      'num_of_hours': numOfHours,
      'babysitterId': babysitterId,
      'parentId': parentId,
      'address': address,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.bookingId == e2?.bookingId &&
        e1?.ratePerHour == e2?.ratePerHour &&
        e1?.numOfChildren == e2?.numOfChildren &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.createdTime == e2?.createdTime &&
        e1?.dateOfService == e2?.dateOfService &&
        e1?.parentNotes == e2?.parentNotes &&
        e1?.babysitterNotes == e2?.babysitterNotes &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.cancelledAt == e2?.cancelledAt &&
        e1?.totalPrice == e2?.totalPrice &&
        listEquality.equals(e1?.children, e2?.children) &&
        e1?.status == e2?.status &&
        e1?.typeOfService == e2?.typeOfService &&
        e1?.numOfHours == e2?.numOfHours &&
        e1?.babysitterId == e2?.babysitterId &&
        e1?.parentId == e2?.parentId &&
        e1?.address == e2?.address;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.bookingId,
        e?.ratePerHour,
        e?.numOfChildren,
        e?.startTime,
        e?.endTime,
        e?.createdTime,
        e?.dateOfService,
        e?.parentNotes,
        e?.babysitterNotes,
        e?.modifiedAt,
        e?.cancelledAt,
        e?.totalPrice,
        e?.children,
        e?.status,
        e?.typeOfService,
        e?.numOfHours,
        e?.babysitterId,
        e?.parentId,
        e?.address
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
