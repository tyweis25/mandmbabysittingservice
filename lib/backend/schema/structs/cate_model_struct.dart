// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CateModelStruct extends FFFirebaseStruct {
  CateModelStruct({
    int? id,
    String? image,
    String? cateName,
    String? distance,
    String? price,
    String? cateType,
    String? articleName,
    bool? isFav,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _image = image,
        _cateName = cateName,
        _distance = distance,
        _price = price,
        _cateType = cateType,
        _articleName = articleName,
        _isFav = isFav,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "cate_name" field.
  String? _cateName;
  String get cateName => _cateName ?? '';
  set cateName(String? val) => _cateName = val;

  bool hasCateName() => _cateName != null;

  // "distance" field.
  String? _distance;
  String get distance => _distance ?? '';
  set distance(String? val) => _distance = val;

  bool hasDistance() => _distance != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "cate_type" field.
  String? _cateType;
  String get cateType => _cateType ?? '';
  set cateType(String? val) => _cateType = val;

  bool hasCateType() => _cateType != null;

  // "article_name" field.
  String? _articleName;
  String get articleName => _articleName ?? '';
  set articleName(String? val) => _articleName = val;

  bool hasArticleName() => _articleName != null;

  // "is_fav" field.
  bool? _isFav;
  bool get isFav => _isFav ?? false;
  set isFav(bool? val) => _isFav = val;

  bool hasIsFav() => _isFav != null;

  static CateModelStruct fromMap(Map<String, dynamic> data) => CateModelStruct(
        id: castToType<int>(data['id']),
        image: data['image'] as String?,
        cateName: data['cate_name'] as String?,
        distance: data['distance'] as String?,
        price: data['price'] as String?,
        cateType: data['cate_type'] as String?,
        articleName: data['article_name'] as String?,
        isFav: data['is_fav'] as bool?,
      );

  static CateModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CateModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'image': _image,
        'cate_name': _cateName,
        'distance': _distance,
        'price': _price,
        'cate_type': _cateType,
        'article_name': _articleName,
        'is_fav': _isFav,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'cate_name': serializeParam(
          _cateName,
          ParamType.String,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'cate_type': serializeParam(
          _cateType,
          ParamType.String,
        ),
        'article_name': serializeParam(
          _articleName,
          ParamType.String,
        ),
        'is_fav': serializeParam(
          _isFav,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CateModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      CateModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        cateName: deserializeParam(
          data['cate_name'],
          ParamType.String,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        cateType: deserializeParam(
          data['cate_type'],
          ParamType.String,
          false,
        ),
        articleName: deserializeParam(
          data['article_name'],
          ParamType.String,
          false,
        ),
        isFav: deserializeParam(
          data['is_fav'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CateModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CateModelStruct &&
        id == other.id &&
        image == other.image &&
        cateName == other.cateName &&
        distance == other.distance &&
        price == other.price &&
        cateType == other.cateType &&
        articleName == other.articleName &&
        isFav == other.isFav;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, image, cateName, distance, price, cateType, articleName, isFav]);
}

CateModelStruct createCateModelStruct({
  int? id,
  String? image,
  String? cateName,
  String? distance,
  String? price,
  String? cateType,
  String? articleName,
  bool? isFav,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CateModelStruct(
      id: id,
      image: image,
      cateName: cateName,
      distance: distance,
      price: price,
      cateType: cateType,
      articleName: articleName,
      isFav: isFav,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CateModelStruct? updateCateModelStruct(
  CateModelStruct? cateModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cateModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCateModelStructData(
  Map<String, dynamic> firestoreData,
  CateModelStruct? cateModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cateModel == null) {
    return;
  }
  if (cateModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cateModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cateModelData = getCateModelFirestoreData(cateModel, forFieldValue);
  final nestedData = cateModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cateModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCateModelFirestoreData(
  CateModelStruct? cateModel, [
  bool forFieldValue = false,
]) {
  if (cateModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cateModel.toMap());

  // Add any Firestore field values
  cateModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCateModelListFirestoreData(
  List<CateModelStruct>? cateModels,
) =>
    cateModels?.map((e) => getCateModelFirestoreData(e, true)).toList() ?? [];
