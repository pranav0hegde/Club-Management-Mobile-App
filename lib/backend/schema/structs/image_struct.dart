// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageStruct extends FFFirebaseStruct {
  ImageStruct({
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static ImageStruct fromMap(Map<String, dynamic> data) => ImageStruct(
        image: data['image'] as String?,
      );

  static ImageStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageStruct && image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([image]);
}

ImageStruct createImageStruct({
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageStruct(
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageStruct? updateImageStruct(
  ImageStruct? imageStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imageStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImageStructData(
  Map<String, dynamic> firestoreData,
  ImageStruct? imageStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageStruct == null) {
    return;
  }
  if (imageStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imageStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageStructData = getImageFirestoreData(imageStruct, forFieldValue);
  final nestedData =
      imageStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imageStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageFirestoreData(
  ImageStruct? imageStruct, [
  bool forFieldValue = false,
]) {
  if (imageStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imageStruct.toMap());

  // Add any Firestore field values
  imageStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageListFirestoreData(
  List<ImageStruct>? imageStructs,
) =>
    imageStructs?.map((e) => getImageFirestoreData(e, true)).toList() ?? [];
