// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GeocodeStruct extends FFFirebaseStruct {
  GeocodeStruct({
    String? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _address = address,
        super(firestoreUtilData);

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  static GeocodeStruct fromMap(Map<String, dynamic> data) => GeocodeStruct(
        address: data['address'] as String?,
      );

  static GeocodeStruct? maybeFromMap(dynamic data) =>
      data is Map ? GeocodeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
      }.withoutNulls;

  static GeocodeStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeocodeStruct(
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GeocodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeocodeStruct && address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([address]);
}

GeocodeStruct createGeocodeStruct({
  String? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GeocodeStruct(
      address: address,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GeocodeStruct? updateGeocodeStruct(
  GeocodeStruct? geocode, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    geocode
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGeocodeStructData(
  Map<String, dynamic> firestoreData,
  GeocodeStruct? geocode,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (geocode == null) {
    return;
  }
  if (geocode.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && geocode.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final geocodeData = getGeocodeFirestoreData(geocode, forFieldValue);
  final nestedData = geocodeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = geocode.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGeocodeFirestoreData(
  GeocodeStruct? geocode, [
  bool forFieldValue = false,
]) {
  if (geocode == null) {
    return {};
  }
  final firestoreData = mapToFirestore(geocode.toMap());

  // Add any Firestore field values
  geocode.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGeocodeListFirestoreData(
  List<GeocodeStruct>? geocodes,
) =>
    geocodes?.map((e) => getGeocodeFirestoreData(e, true)).toList() ?? [];
