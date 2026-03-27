// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileDataModelStruct extends FFFirebaseStruct {
  UserProfileDataModelStruct({
    DateTime? createdTime,
    String? email,
    String? uid,
    String? imgProfile,
    String? employeeId,
    String? fcmToken,
    List<DocumentReference>? sawadChatRoomRef,
    String? imgProfileBlurHash,
    bool? goldCupConsent,
    DateTime? consentDate,
    String? fullName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdTime = createdTime,
        _email = email,
        _uid = uid,
        _imgProfile = imgProfile,
        _employeeId = employeeId,
        _fcmToken = fcmToken,
        _sawadChatRoomRef = sawadChatRoomRef,
        _imgProfileBlurHash = imgProfileBlurHash,
        _goldCupConsent = goldCupConsent,
        _consentDate = consentDate,
        _fullName = fullName,
        super(firestoreUtilData);

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;

  bool hasCreatedTime() => _createdTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "img_profile" field.
  String? _imgProfile;
  String get imgProfile => _imgProfile ?? '';
  set imgProfile(String? val) => _imgProfile = val;

  bool hasImgProfile() => _imgProfile != null;

  // "employee_id" field.
  String? _employeeId;
  String get employeeId => _employeeId ?? '';
  set employeeId(String? val) => _employeeId = val;

  bool hasEmployeeId() => _employeeId != null;

  // "fcm_token" field.
  String? _fcmToken;
  String get fcmToken => _fcmToken ?? '';
  set fcmToken(String? val) => _fcmToken = val;

  bool hasFcmToken() => _fcmToken != null;

  // "sawad_chat_room_ref" field.
  List<DocumentReference>? _sawadChatRoomRef;
  List<DocumentReference> get sawadChatRoomRef => _sawadChatRoomRef ?? const [];
  set sawadChatRoomRef(List<DocumentReference>? val) => _sawadChatRoomRef = val;

  void updateSawadChatRoomRef(Function(List<DocumentReference>) updateFn) {
    updateFn(_sawadChatRoomRef ??= []);
  }

  bool hasSawadChatRoomRef() => _sawadChatRoomRef != null;

  // "img_profile_blur_hash" field.
  String? _imgProfileBlurHash;
  String get imgProfileBlurHash => _imgProfileBlurHash ?? '';
  set imgProfileBlurHash(String? val) => _imgProfileBlurHash = val;

  bool hasImgProfileBlurHash() => _imgProfileBlurHash != null;

  // "gold_cup_consent" field.
  bool? _goldCupConsent;
  bool get goldCupConsent => _goldCupConsent ?? false;
  set goldCupConsent(bool? val) => _goldCupConsent = val;

  bool hasGoldCupConsent() => _goldCupConsent != null;

  // "consent_date" field.
  DateTime? _consentDate;
  DateTime? get consentDate => _consentDate;
  set consentDate(DateTime? val) => _consentDate = val;

  bool hasConsentDate() => _consentDate != null;

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  static UserProfileDataModelStruct fromMap(Map<String, dynamic> data) =>
      UserProfileDataModelStruct(
        createdTime: data['created_time'] as DateTime?,
        email: data['email'] as String?,
        uid: data['uid'] as String?,
        imgProfile: data['img_profile'] as String?,
        employeeId: data['employee_id'] as String?,
        fcmToken: data['fcm_token'] as String?,
        sawadChatRoomRef: getDataList(data['sawad_chat_room_ref']),
        imgProfileBlurHash: data['img_profile_blur_hash'] as String?,
        goldCupConsent: data['gold_cup_consent'] as bool?,
        consentDate: data['consent_date'] as DateTime?,
        fullName: data['FullName'] as String?,
      );

  static UserProfileDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_time': _createdTime,
        'email': _email,
        'uid': _uid,
        'img_profile': _imgProfile,
        'employee_id': _employeeId,
        'fcm_token': _fcmToken,
        'sawad_chat_room_ref': _sawadChatRoomRef,
        'img_profile_blur_hash': _imgProfileBlurHash,
        'gold_cup_consent': _goldCupConsent,
        'consent_date': _consentDate,
        'FullName': _fullName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_time': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'img_profile': serializeParam(
          _imgProfile,
          ParamType.String,
        ),
        'employee_id': serializeParam(
          _employeeId,
          ParamType.String,
        ),
        'fcm_token': serializeParam(
          _fcmToken,
          ParamType.String,
        ),
        'sawad_chat_room_ref': serializeParam(
          _sawadChatRoomRef,
          ParamType.DocumentReference,
          isList: true,
        ),
        'img_profile_blur_hash': serializeParam(
          _imgProfileBlurHash,
          ParamType.String,
        ),
        'gold_cup_consent': serializeParam(
          _goldCupConsent,
          ParamType.bool,
        ),
        'consent_date': serializeParam(
          _consentDate,
          ParamType.DateTime,
        ),
        'FullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserProfileDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserProfileDataModelStruct(
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.DateTime,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        imgProfile: deserializeParam(
          data['img_profile'],
          ParamType.String,
          false,
        ),
        employeeId: deserializeParam(
          data['employee_id'],
          ParamType.String,
          false,
        ),
        fcmToken: deserializeParam(
          data['fcm_token'],
          ParamType.String,
          false,
        ),
        sawadChatRoomRef: deserializeParam<DocumentReference>(
          data['sawad_chat_room_ref'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['SawadChatRoom'],
        ),
        imgProfileBlurHash: deserializeParam(
          data['img_profile_blur_hash'],
          ParamType.String,
          false,
        ),
        goldCupConsent: deserializeParam(
          data['gold_cup_consent'],
          ParamType.bool,
          false,
        ),
        consentDate: deserializeParam(
          data['consent_date'],
          ParamType.DateTime,
          false,
        ),
        fullName: deserializeParam(
          data['FullName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserProfileDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserProfileDataModelStruct &&
        createdTime == other.createdTime &&
        email == other.email &&
        uid == other.uid &&
        imgProfile == other.imgProfile &&
        employeeId == other.employeeId &&
        fcmToken == other.fcmToken &&
        listEquality.equals(sawadChatRoomRef, other.sawadChatRoomRef) &&
        imgProfileBlurHash == other.imgProfileBlurHash &&
        goldCupConsent == other.goldCupConsent &&
        consentDate == other.consentDate &&
        fullName == other.fullName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdTime,
        email,
        uid,
        imgProfile,
        employeeId,
        fcmToken,
        sawadChatRoomRef,
        imgProfileBlurHash,
        goldCupConsent,
        consentDate,
        fullName
      ]);
}

UserProfileDataModelStruct createUserProfileDataModelStruct({
  DateTime? createdTime,
  String? email,
  String? uid,
  String? imgProfile,
  String? employeeId,
  String? fcmToken,
  String? imgProfileBlurHash,
  bool? goldCupConsent,
  DateTime? consentDate,
  String? fullName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserProfileDataModelStruct(
      createdTime: createdTime,
      email: email,
      uid: uid,
      imgProfile: imgProfile,
      employeeId: employeeId,
      fcmToken: fcmToken,
      imgProfileBlurHash: imgProfileBlurHash,
      goldCupConsent: goldCupConsent,
      consentDate: consentDate,
      fullName: fullName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserProfileDataModelStruct? updateUserProfileDataModelStruct(
  UserProfileDataModelStruct? userProfileDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userProfileDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserProfileDataModelStructData(
  Map<String, dynamic> firestoreData,
  UserProfileDataModelStruct? userProfileDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userProfileDataModel == null) {
    return;
  }
  if (userProfileDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userProfileDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userProfileDataModelData =
      getUserProfileDataModelFirestoreData(userProfileDataModel, forFieldValue);
  final nestedData =
      userProfileDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userProfileDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserProfileDataModelFirestoreData(
  UserProfileDataModelStruct? userProfileDataModel, [
  bool forFieldValue = false,
]) {
  if (userProfileDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userProfileDataModel.toMap());

  // Add any Firestore field values
  userProfileDataModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserProfileDataModelListFirestoreData(
  List<UserProfileDataModelStruct>? userProfileDataModels,
) =>
    userProfileDataModels
        ?.map((e) => getUserProfileDataModelFirestoreData(e, true))
        .toList() ??
    [];
