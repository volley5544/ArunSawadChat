// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRoomDataModelStruct extends FFFirebaseStruct {
  ChatRoomDataModelStruct({
    List<DocumentReference>? usersRef,
    List<String>? usersEmployeeId,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _usersRef = usersRef,
        _usersEmployeeId = usersEmployeeId,
        super(firestoreUtilData);

  // "users_ref" field.
  List<DocumentReference>? _usersRef;
  List<DocumentReference> get usersRef => _usersRef ?? const [];
  set usersRef(List<DocumentReference>? val) => _usersRef = val;

  void updateUsersRef(Function(List<DocumentReference>) updateFn) {
    updateFn(_usersRef ??= []);
  }

  bool hasUsersRef() => _usersRef != null;

  // "users_employee_id" field.
  List<String>? _usersEmployeeId;
  List<String> get usersEmployeeId => _usersEmployeeId ?? const [];
  set usersEmployeeId(List<String>? val) => _usersEmployeeId = val;

  void updateUsersEmployeeId(Function(List<String>) updateFn) {
    updateFn(_usersEmployeeId ??= []);
  }

  bool hasUsersEmployeeId() => _usersEmployeeId != null;

  static ChatRoomDataModelStruct fromMap(Map<String, dynamic> data) =>
      ChatRoomDataModelStruct(
        usersRef: getDataList(data['users_ref']),
        usersEmployeeId: getDataList(data['users_employee_id']),
      );

  static ChatRoomDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatRoomDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'users_ref': _usersRef,
        'users_employee_id': _usersEmployeeId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'users_ref': serializeParam(
          _usersRef,
          ParamType.DocumentReference,
          isList: true,
        ),
        'users_employee_id': serializeParam(
          _usersEmployeeId,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ChatRoomDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChatRoomDataModelStruct(
        usersRef: deserializeParam<DocumentReference>(
          data['users_ref'],
          ParamType.DocumentReference,
          true,
          collectionNamePath: ['user_custom'],
        ),
        usersEmployeeId: deserializeParam<String>(
          data['users_employee_id'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ChatRoomDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatRoomDataModelStruct &&
        listEquality.equals(usersRef, other.usersRef) &&
        listEquality.equals(usersEmployeeId, other.usersEmployeeId);
  }

  @override
  int get hashCode => const ListEquality().hash([usersRef, usersEmployeeId]);
}

ChatRoomDataModelStruct createChatRoomDataModelStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatRoomDataModelStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatRoomDataModelStruct? updateChatRoomDataModelStruct(
  ChatRoomDataModelStruct? chatRoomDataModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatRoomDataModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatRoomDataModelStructData(
  Map<String, dynamic> firestoreData,
  ChatRoomDataModelStruct? chatRoomDataModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatRoomDataModel == null) {
    return;
  }
  if (chatRoomDataModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatRoomDataModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatRoomDataModelData =
      getChatRoomDataModelFirestoreData(chatRoomDataModel, forFieldValue);
  final nestedData =
      chatRoomDataModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatRoomDataModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatRoomDataModelFirestoreData(
  ChatRoomDataModelStruct? chatRoomDataModel, [
  bool forFieldValue = false,
]) {
  if (chatRoomDataModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatRoomDataModel.toMap());

  // Add any Firestore field values
  chatRoomDataModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatRoomDataModelListFirestoreData(
  List<ChatRoomDataModelStruct>? chatRoomDataModels,
) =>
    chatRoomDataModels
        ?.map((e) => getChatRoomDataModelFirestoreData(e, true))
        .toList() ??
    [];
