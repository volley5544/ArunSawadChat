// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileApiDataModelStruct extends FFFirebaseStruct {
  UserProfileApiDataModelStruct({
    String? empCode,
    String? fullName,
    String? nickName,
    String? branchCode,
    String? branchName,
    String? area,
    String? region,
    String? positionName,
    String? department,
    String? unit,
    String? birthDate,
    AgeStruct? age,
    String? hiredDate,
    ServiceDurationStruct? serviceDuration,
    PositionAgeStruct? positionAge,
    String? checkPositionAge,
    String? mobileNumber,
    HeadOfWorkStruct? headOfWork,
    String? level,
    String? branch,
    String? insurancePlan,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _empCode = empCode,
        _fullName = fullName,
        _nickName = nickName,
        _branchCode = branchCode,
        _branchName = branchName,
        _area = area,
        _region = region,
        _positionName = positionName,
        _department = department,
        _unit = unit,
        _birthDate = birthDate,
        _age = age,
        _hiredDate = hiredDate,
        _serviceDuration = serviceDuration,
        _positionAge = positionAge,
        _checkPositionAge = checkPositionAge,
        _mobileNumber = mobileNumber,
        _headOfWork = headOfWork,
        _level = level,
        _branch = branch,
        _insurancePlan = insurancePlan,
        super(firestoreUtilData);

  // "EmpCode" field.
  String? _empCode;
  String get empCode => _empCode ?? '';
  set empCode(String? val) => _empCode = val;

  bool hasEmpCode() => _empCode != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "nickName" field.
  String? _nickName;
  String get nickName => _nickName ?? '';
  set nickName(String? val) => _nickName = val;

  bool hasNickName() => _nickName != null;

  // "BranchCode" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  // "BranchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  set branchName(String? val) => _branchName = val;

  bool hasBranchName() => _branchName != null;

  // "Area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;

  bool hasArea() => _area != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "PositionName" field.
  String? _positionName;
  String get positionName => _positionName ?? '';
  set positionName(String? val) => _positionName = val;

  bool hasPositionName() => _positionName != null;

  // "Department" field.
  String? _department;
  String get department => _department ?? '';
  set department(String? val) => _department = val;

  bool hasDepartment() => _department != null;

  // "Unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "BirthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "Age" field.
  AgeStruct? _age;
  AgeStruct get age => _age ?? AgeStruct();
  set age(AgeStruct? val) => _age = val;

  void updateAge(Function(AgeStruct) updateFn) {
    updateFn(_age ??= AgeStruct());
  }

  bool hasAge() => _age != null;

  // "HiredDate" field.
  String? _hiredDate;
  String get hiredDate => _hiredDate ?? '';
  set hiredDate(String? val) => _hiredDate = val;

  bool hasHiredDate() => _hiredDate != null;

  // "ServiceDuration" field.
  ServiceDurationStruct? _serviceDuration;
  ServiceDurationStruct get serviceDuration =>
      _serviceDuration ?? ServiceDurationStruct();
  set serviceDuration(ServiceDurationStruct? val) => _serviceDuration = val;

  void updateServiceDuration(Function(ServiceDurationStruct) updateFn) {
    updateFn(_serviceDuration ??= ServiceDurationStruct());
  }

  bool hasServiceDuration() => _serviceDuration != null;

  // "PositionAge" field.
  PositionAgeStruct? _positionAge;
  PositionAgeStruct get positionAge => _positionAge ?? PositionAgeStruct();
  set positionAge(PositionAgeStruct? val) => _positionAge = val;

  void updatePositionAge(Function(PositionAgeStruct) updateFn) {
    updateFn(_positionAge ??= PositionAgeStruct());
  }

  bool hasPositionAge() => _positionAge != null;

  // "checkPositionAge" field.
  String? _checkPositionAge;
  String get checkPositionAge => _checkPositionAge ?? '';
  set checkPositionAge(String? val) => _checkPositionAge = val;

  bool hasCheckPositionAge() => _checkPositionAge != null;

  // "MobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "HeadOfWork" field.
  HeadOfWorkStruct? _headOfWork;
  HeadOfWorkStruct get headOfWork => _headOfWork ?? HeadOfWorkStruct();
  set headOfWork(HeadOfWorkStruct? val) => _headOfWork = val;

  void updateHeadOfWork(Function(HeadOfWorkStruct) updateFn) {
    updateFn(_headOfWork ??= HeadOfWorkStruct());
  }

  bool hasHeadOfWork() => _headOfWork != null;

  // "Level" field.
  String? _level;
  String get level => _level ?? '';
  set level(String? val) => _level = val;

  bool hasLevel() => _level != null;

  // "Branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  set branch(String? val) => _branch = val;

  bool hasBranch() => _branch != null;

  // "InsurancePlan" field.
  String? _insurancePlan;
  String get insurancePlan => _insurancePlan ?? '';
  set insurancePlan(String? val) => _insurancePlan = val;

  bool hasInsurancePlan() => _insurancePlan != null;

  static UserProfileApiDataModelStruct fromMap(Map<String, dynamic> data) =>
      UserProfileApiDataModelStruct(
        empCode: data['EmpCode'] as String?,
        fullName: data['fullName'] as String?,
        nickName: data['nickName'] as String?,
        branchCode: data['BranchCode'] as String?,
        branchName: data['BranchName'] as String?,
        area: data['Area'] as String?,
        region: data['Region'] as String?,
        positionName: data['PositionName'] as String?,
        department: data['Department'] as String?,
        unit: data['Unit'] as String?,
        birthDate: data['BirthDate'] as String?,
        age: data['Age'] is AgeStruct
            ? data['Age']
            : AgeStruct.maybeFromMap(data['Age']),
        hiredDate: data['HiredDate'] as String?,
        serviceDuration: data['ServiceDuration'] is ServiceDurationStruct
            ? data['ServiceDuration']
            : ServiceDurationStruct.maybeFromMap(data['ServiceDuration']),
        positionAge: data['PositionAge'] is PositionAgeStruct
            ? data['PositionAge']
            : PositionAgeStruct.maybeFromMap(data['PositionAge']),
        checkPositionAge: data['checkPositionAge'] as String?,
        mobileNumber: data['MobileNumber'] as String?,
        headOfWork: data['HeadOfWork'] is HeadOfWorkStruct
            ? data['HeadOfWork']
            : HeadOfWorkStruct.maybeFromMap(data['HeadOfWork']),
        level: data['Level'] as String?,
        branch: data['Branch'] as String?,
        insurancePlan: data['InsurancePlan'] as String?,
      );

  static UserProfileApiDataModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? UserProfileApiDataModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'EmpCode': _empCode,
        'fullName': _fullName,
        'nickName': _nickName,
        'BranchCode': _branchCode,
        'BranchName': _branchName,
        'Area': _area,
        'Region': _region,
        'PositionName': _positionName,
        'Department': _department,
        'Unit': _unit,
        'BirthDate': _birthDate,
        'Age': _age?.toMap(),
        'HiredDate': _hiredDate,
        'ServiceDuration': _serviceDuration?.toMap(),
        'PositionAge': _positionAge?.toMap(),
        'checkPositionAge': _checkPositionAge,
        'MobileNumber': _mobileNumber,
        'HeadOfWork': _headOfWork?.toMap(),
        'Level': _level,
        'Branch': _branch,
        'InsurancePlan': _insurancePlan,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'EmpCode': serializeParam(
          _empCode,
          ParamType.String,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'nickName': serializeParam(
          _nickName,
          ParamType.String,
        ),
        'BranchCode': serializeParam(
          _branchCode,
          ParamType.String,
        ),
        'BranchName': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'Area': serializeParam(
          _area,
          ParamType.String,
        ),
        'Region': serializeParam(
          _region,
          ParamType.String,
        ),
        'PositionName': serializeParam(
          _positionName,
          ParamType.String,
        ),
        'Department': serializeParam(
          _department,
          ParamType.String,
        ),
        'Unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'BirthDate': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'Age': serializeParam(
          _age,
          ParamType.DataStruct,
        ),
        'HiredDate': serializeParam(
          _hiredDate,
          ParamType.String,
        ),
        'ServiceDuration': serializeParam(
          _serviceDuration,
          ParamType.DataStruct,
        ),
        'PositionAge': serializeParam(
          _positionAge,
          ParamType.DataStruct,
        ),
        'checkPositionAge': serializeParam(
          _checkPositionAge,
          ParamType.String,
        ),
        'MobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'HeadOfWork': serializeParam(
          _headOfWork,
          ParamType.DataStruct,
        ),
        'Level': serializeParam(
          _level,
          ParamType.String,
        ),
        'Branch': serializeParam(
          _branch,
          ParamType.String,
        ),
        'InsurancePlan': serializeParam(
          _insurancePlan,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserProfileApiDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserProfileApiDataModelStruct(
        empCode: deserializeParam(
          data['EmpCode'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        nickName: deserializeParam(
          data['nickName'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['BranchCode'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['BranchName'],
          ParamType.String,
          false,
        ),
        area: deserializeParam(
          data['Area'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['Region'],
          ParamType.String,
          false,
        ),
        positionName: deserializeParam(
          data['PositionName'],
          ParamType.String,
          false,
        ),
        department: deserializeParam(
          data['Department'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['Unit'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['BirthDate'],
          ParamType.String,
          false,
        ),
        age: deserializeStructParam(
          data['Age'],
          ParamType.DataStruct,
          false,
          structBuilder: AgeStruct.fromSerializableMap,
        ),
        hiredDate: deserializeParam(
          data['HiredDate'],
          ParamType.String,
          false,
        ),
        serviceDuration: deserializeStructParam(
          data['ServiceDuration'],
          ParamType.DataStruct,
          false,
          structBuilder: ServiceDurationStruct.fromSerializableMap,
        ),
        positionAge: deserializeStructParam(
          data['PositionAge'],
          ParamType.DataStruct,
          false,
          structBuilder: PositionAgeStruct.fromSerializableMap,
        ),
        checkPositionAge: deserializeParam(
          data['checkPositionAge'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['MobileNumber'],
          ParamType.String,
          false,
        ),
        headOfWork: deserializeStructParam(
          data['HeadOfWork'],
          ParamType.DataStruct,
          false,
          structBuilder: HeadOfWorkStruct.fromSerializableMap,
        ),
        level: deserializeParam(
          data['Level'],
          ParamType.String,
          false,
        ),
        branch: deserializeParam(
          data['Branch'],
          ParamType.String,
          false,
        ),
        insurancePlan: deserializeParam(
          data['InsurancePlan'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserProfileApiDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfileApiDataModelStruct &&
        empCode == other.empCode &&
        fullName == other.fullName &&
        nickName == other.nickName &&
        branchCode == other.branchCode &&
        branchName == other.branchName &&
        area == other.area &&
        region == other.region &&
        positionName == other.positionName &&
        department == other.department &&
        unit == other.unit &&
        birthDate == other.birthDate &&
        age == other.age &&
        hiredDate == other.hiredDate &&
        serviceDuration == other.serviceDuration &&
        positionAge == other.positionAge &&
        checkPositionAge == other.checkPositionAge &&
        mobileNumber == other.mobileNumber &&
        headOfWork == other.headOfWork &&
        level == other.level &&
        branch == other.branch &&
        insurancePlan == other.insurancePlan;
  }

  @override
  int get hashCode => const ListEquality().hash([
        empCode,
        fullName,
        nickName,
        branchCode,
        branchName,
        area,
        region,
        positionName,
        department,
        unit,
        birthDate,
        age,
        hiredDate,
        serviceDuration,
        positionAge,
        checkPositionAge,
        mobileNumber,
        headOfWork,
        level,
        branch,
        insurancePlan
      ]);
}

UserProfileApiDataModelStruct createUserProfileApiDataModelStruct({
  String? empCode,
  String? fullName,
  String? nickName,
  String? branchCode,
  String? branchName,
  String? area,
  String? region,
  String? positionName,
  String? department,
  String? unit,
  String? birthDate,
  AgeStruct? age,
  String? hiredDate,
  ServiceDurationStruct? serviceDuration,
  PositionAgeStruct? positionAge,
  String? checkPositionAge,
  String? mobileNumber,
  HeadOfWorkStruct? headOfWork,
  String? level,
  String? branch,
  String? insurancePlan,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserProfileApiDataModelStruct(
      empCode: empCode,
      fullName: fullName,
      nickName: nickName,
      branchCode: branchCode,
      branchName: branchName,
      area: area,
      region: region,
      positionName: positionName,
      department: department,
      unit: unit,
      birthDate: birthDate,
      age: age ?? (clearUnsetFields ? AgeStruct() : null),
      hiredDate: hiredDate,
      serviceDuration: serviceDuration ??
          (clearUnsetFields ? ServiceDurationStruct() : null),
      positionAge:
          positionAge ?? (clearUnsetFields ? PositionAgeStruct() : null),
      checkPositionAge: checkPositionAge,
      mobileNumber: mobileNumber,
      headOfWork: headOfWork ?? (clearUnsetFields ? HeadOfWorkStruct() : null),
      level: level,
      branch: branch,
      insurancePlan: insurancePlan,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserProfileApiDataModelStruct? updateUserProfileApiDataModelStruct(
  UserProfileApiDataModelStruct? userProfileApiDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userProfileApiDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserProfileApiDataModelStructData(
  Map<String, dynamic> firestoreData,
  UserProfileApiDataModelStruct? userProfileApiDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userProfileApiDataModel == null) {
    return;
  }
  if (userProfileApiDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      userProfileApiDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userProfileApiDataModelData = getUserProfileApiDataModelFirestoreData(
      userProfileApiDataModel, forFieldValue);
  final nestedData =
      userProfileApiDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userProfileApiDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserProfileApiDataModelFirestoreData(
  UserProfileApiDataModelStruct? userProfileApiDataModel, [
  bool forFieldValue = false,
]) {
  if (userProfileApiDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userProfileApiDataModel.toMap());

  // Handle nested data for "Age" field.
  addAgeStructData(
    firestoreData,
    userProfileApiDataModel.hasAge() ? userProfileApiDataModel.age : null,
    'Age',
    forFieldValue,
  );

  // Handle nested data for "ServiceDuration" field.
  addServiceDurationStructData(
    firestoreData,
    userProfileApiDataModel.hasServiceDuration()
        ? userProfileApiDataModel.serviceDuration
        : null,
    'ServiceDuration',
    forFieldValue,
  );

  // Handle nested data for "PositionAge" field.
  addPositionAgeStructData(
    firestoreData,
    userProfileApiDataModel.hasPositionAge()
        ? userProfileApiDataModel.positionAge
        : null,
    'PositionAge',
    forFieldValue,
  );

  // Handle nested data for "HeadOfWork" field.
  addHeadOfWorkStructData(
    firestoreData,
    userProfileApiDataModel.hasHeadOfWork()
        ? userProfileApiDataModel.headOfWork
        : null,
    'HeadOfWork',
    forFieldValue,
  );

  // Add any Firestore field values
  userProfileApiDataModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserProfileApiDataModelListFirestoreData(
  List<UserProfileApiDataModelStruct>? userProfileApiDataModels,
) =>
    userProfileApiDataModels
        ?.map((e) => getUserProfileApiDataModelFirestoreData(e, true))
        .toList() ??
    [];
