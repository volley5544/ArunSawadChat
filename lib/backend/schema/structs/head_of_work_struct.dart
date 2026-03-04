// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class HeadOfWorkStruct extends FFFirebaseStruct {
  HeadOfWorkStruct({
    String? empCodeBefore,
    String? fullnameBefore,
    String? empCodeAfter,
    String? fullnameAfter,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _empCodeBefore = empCodeBefore,
        _fullnameBefore = fullnameBefore,
        _empCodeAfter = empCodeAfter,
        _fullnameAfter = fullnameAfter,
        super(firestoreUtilData);

  // "EmpCodeBefore" field.
  String? _empCodeBefore;
  String get empCodeBefore => _empCodeBefore ?? '';
  set empCodeBefore(String? val) => _empCodeBefore = val;

  bool hasEmpCodeBefore() => _empCodeBefore != null;

  // "FullnameBefore" field.
  String? _fullnameBefore;
  String get fullnameBefore => _fullnameBefore ?? '';
  set fullnameBefore(String? val) => _fullnameBefore = val;

  bool hasFullnameBefore() => _fullnameBefore != null;

  // "EmpCodeAfter" field.
  String? _empCodeAfter;
  String get empCodeAfter => _empCodeAfter ?? '';
  set empCodeAfter(String? val) => _empCodeAfter = val;

  bool hasEmpCodeAfter() => _empCodeAfter != null;

  // "FullnameAfter" field.
  String? _fullnameAfter;
  String get fullnameAfter => _fullnameAfter ?? '';
  set fullnameAfter(String? val) => _fullnameAfter = val;

  bool hasFullnameAfter() => _fullnameAfter != null;

  static HeadOfWorkStruct fromMap(Map<String, dynamic> data) =>
      HeadOfWorkStruct(
        empCodeBefore: data['EmpCodeBefore'] as String?,
        fullnameBefore: data['FullnameBefore'] as String?,
        empCodeAfter: data['EmpCodeAfter'] as String?,
        fullnameAfter: data['FullnameAfter'] as String?,
      );

  static HeadOfWorkStruct? maybeFromMap(dynamic data) => data is Map
      ? HeadOfWorkStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'EmpCodeBefore': _empCodeBefore,
        'FullnameBefore': _fullnameBefore,
        'EmpCodeAfter': _empCodeAfter,
        'FullnameAfter': _fullnameAfter,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'EmpCodeBefore': serializeParam(
          _empCodeBefore,
          ParamType.String,
        ),
        'FullnameBefore': serializeParam(
          _fullnameBefore,
          ParamType.String,
        ),
        'EmpCodeAfter': serializeParam(
          _empCodeAfter,
          ParamType.String,
        ),
        'FullnameAfter': serializeParam(
          _fullnameAfter,
          ParamType.String,
        ),
      }.withoutNulls;

  static HeadOfWorkStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeadOfWorkStruct(
        empCodeBefore: deserializeParam(
          data['EmpCodeBefore'],
          ParamType.String,
          false,
        ),
        fullnameBefore: deserializeParam(
          data['FullnameBefore'],
          ParamType.String,
          false,
        ),
        empCodeAfter: deserializeParam(
          data['EmpCodeAfter'],
          ParamType.String,
          false,
        ),
        fullnameAfter: deserializeParam(
          data['FullnameAfter'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HeadOfWorkStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HeadOfWorkStruct &&
        empCodeBefore == other.empCodeBefore &&
        fullnameBefore == other.fullnameBefore &&
        empCodeAfter == other.empCodeAfter &&
        fullnameAfter == other.fullnameAfter;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([empCodeBefore, fullnameBefore, empCodeAfter, fullnameAfter]);
}

HeadOfWorkStruct createHeadOfWorkStruct({
  String? empCodeBefore,
  String? fullnameBefore,
  String? empCodeAfter,
  String? fullnameAfter,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HeadOfWorkStruct(
      empCodeBefore: empCodeBefore,
      fullnameBefore: fullnameBefore,
      empCodeAfter: empCodeAfter,
      fullnameAfter: fullnameAfter,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HeadOfWorkStruct? updateHeadOfWorkStruct(
  HeadOfWorkStruct? headOfWork, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    headOfWork
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHeadOfWorkStructData(
  Map<String, dynamic> firestoreData,
  HeadOfWorkStruct? headOfWork,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (headOfWork == null) {
    return;
  }
  if (headOfWork.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && headOfWork.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final headOfWorkData = getHeadOfWorkFirestoreData(headOfWork, forFieldValue);
  final nestedData = headOfWorkData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = headOfWork.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHeadOfWorkFirestoreData(
  HeadOfWorkStruct? headOfWork, [
  bool forFieldValue = false,
]) {
  if (headOfWork == null) {
    return {};
  }
  final firestoreData = mapToFirestore(headOfWork.toMap());

  // Add any Firestore field values
  headOfWork.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHeadOfWorkListFirestoreData(
  List<HeadOfWorkStruct>? headOfWorks,
) =>
    headOfWorks?.map((e) => getHeadOfWorkFirestoreData(e, true)).toList() ?? [];
