import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'person_selecting_page_widget.dart' show PersonSelectingPageWidget;
import 'package:flutter/material.dart';

class PersonSelectingPageModel
    extends FlutterFlowModel<PersonSelectingPageWidget> {
  ///  Local state fields for this page.

  List<EmployeeDataModelStruct> employeeData = [];
  void addToEmployeeData(EmployeeDataModelStruct item) =>
      employeeData.add(item);
  void removeFromEmployeeData(EmployeeDataModelStruct item) =>
      employeeData.remove(item);
  void removeAtIndexFromEmployeeData(int index) => employeeData.removeAt(index);
  void insertAtIndexInEmployeeData(int index, EmployeeDataModelStruct item) =>
      employeeData.insert(index, item);
  void updateEmployeeDataAtIndex(
          int index, Function(EmployeeDataModelStruct) updateFn) =>
      employeeData[index] = updateFn(employeeData[index]);

  int loopCountTemp = 0;

  List<DocumentReference> usersDocRefList = [];
  void addToUsersDocRefList(DocumentReference item) =>
      usersDocRefList.add(item);
  void removeFromUsersDocRefList(DocumentReference item) =>
      usersDocRefList.remove(item);
  void removeAtIndexFromUsersDocRefList(int index) =>
      usersDocRefList.removeAt(index);
  void insertAtIndexInUsersDocRefList(int index, DocumentReference item) =>
      usersDocRefList.insert(index, item);
  void updateUsersDocRefListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      usersDocRefList[index] = updateFn(usersDocRefList[index]);

  List<SawadChatRoomRecord> chatRoomDocList = [];
  void addToChatRoomDocList(SawadChatRoomRecord item) =>
      chatRoomDocList.add(item);
  void removeFromChatRoomDocList(SawadChatRoomRecord item) =>
      chatRoomDocList.remove(item);
  void removeAtIndexFromChatRoomDocList(int index) =>
      chatRoomDocList.removeAt(index);
  void insertAtIndexInChatRoomDocList(int index, SawadChatRoomRecord item) =>
      chatRoomDocList.insert(index, item);
  void updateChatRoomDocListAtIndex(
          int index, Function(SawadChatRoomRecord) updateFn) =>
      chatRoomDocList[index] = updateFn(chatRoomDocList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchBox widget.
  FocusNode? searchBoxFocusNode;
  TextEditingController? searchBoxTextController;
  String? Function(BuildContext, String?)? searchBoxTextControllerValidator;
  // Stores action output result for [Backend Call - API (getAllEmployeeAPI)] action in IconButton widget.
  ApiCallResponse? getEmployee;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<SawadChatRoomRecord>? queryMyChatRoom;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SawadChatRoomRecord? createNewChatRoom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBoxFocusNode?.dispose();
    searchBoxTextController?.dispose();
  }
}
