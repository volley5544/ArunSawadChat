// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EmployeeDataModelStruct extends FFFirebaseStruct {
  EmployeeDataModelStruct({
    String? fullName,
    String? employeeCode,
    String? position,
    String? branchCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fullName = fullName,
        _employeeCode = employeeCode,
        _position = position,
        _branchCode = branchCode,
        super(firestoreUtilData);

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "EmployeeCode" field.
  String? _employeeCode;
  String get employeeCode => _employeeCode ?? '';
  set employeeCode(String? val) => _employeeCode = val;

  bool hasEmployeeCode() => _employeeCode != null;

  // "Position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;

  bool hasPosition() => _position != null;

  // "BranchCode" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  static EmployeeDataModelStruct fromMap(Map<String, dynamic> data) =>
      EmployeeDataModelStruct(
        fullName: data['FullName'] as String?,
        employeeCode: data['EmployeeCode'] as String?,
        position: data['Position'] as String?,
        branchCode: data['BranchCode'] as String?,
      );

  static EmployeeDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? EmployeeDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FullName': _fullName,
        'EmployeeCode': _employeeCode,
        'Position': _position,
        'BranchCode': _branchCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'EmployeeCode': serializeParam(
          _employeeCode,
          ParamType.String,
        ),
        'Position': serializeParam(
          _position,
          ParamType.String,
        ),
        'BranchCode': serializeParam(
          _branchCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmployeeDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EmployeeDataModelStruct(
        fullName: deserializeParam(
          data['FullName'],
          ParamType.String,
          false,
        ),
        employeeCode: deserializeParam(
          data['EmployeeCode'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['Position'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['BranchCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmployeeDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmployeeDataModelStruct &&
        fullName == other.fullName &&
        employeeCode == other.employeeCode &&
        position == other.position &&
        branchCode == other.branchCode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fullName, employeeCode, position, branchCode]);
}

EmployeeDataModelStruct createEmployeeDataModelStruct({
  String? fullName,
  String? employeeCode,
  String? position,
  String? branchCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmployeeDataModelStruct(
      fullName: fullName,
      employeeCode: employeeCode,
      position: position,
      branchCode: branchCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmployeeDataModelStruct? updateEmployeeDataModelStruct(
  EmployeeDataModelStruct? employeeDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    employeeDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmployeeDataModelStructData(
  Map<String, dynamic> firestoreData,
  EmployeeDataModelStruct? employeeDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (employeeDataModel == null) {
    return;
  }
  if (employeeDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && employeeDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final employeeDataModelData =
      getEmployeeDataModelFirestoreData(employeeDataModel, forFieldValue);
  final nestedData =
      employeeDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = employeeDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmployeeDataModelFirestoreData(
  EmployeeDataModelStruct? employeeDataModel, [
  bool forFieldValue = false,
]) {
  if (employeeDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(employeeDataModel.toMap());

  // Add any Firestore field values
  employeeDataModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmployeeDataModelListFirestoreData(
  List<EmployeeDataModelStruct>? employeeDataModels,
) =>
    employeeDataModels
        ?.map((e) => getEmployeeDataModelFirestoreData(e, true))
        .toList() ??
    [];
