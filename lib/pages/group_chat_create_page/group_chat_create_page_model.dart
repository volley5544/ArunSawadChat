import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'group_chat_create_page_widget.dart' show GroupChatCreatePageWidget;
import 'package:flutter/material.dart';

class GroupChatCreatePageModel
    extends FlutterFlowModel<GroupChatCreatePageWidget> {
  ///  Local state fields for this page.

  int? loopCountTemp = 0;

  List<UserProfileDataModelStruct> selectedEmployeeList = [];
  void addToSelectedEmployeeList(UserProfileDataModelStruct item) =>
      selectedEmployeeList.add(item);
  void removeFromSelectedEmployeeList(UserProfileDataModelStruct item) =>
      selectedEmployeeList.remove(item);
  void removeAtIndexFromSelectedEmployeeList(int index) =>
      selectedEmployeeList.removeAt(index);
  void insertAtIndexInSelectedEmployeeList(
          int index, UserProfileDataModelStruct item) =>
      selectedEmployeeList.insert(index, item);
  void updateSelectedEmployeeListAtIndex(
          int index, Function(UserProfileDataModelStruct) updateFn) =>
      selectedEmployeeList[index] = updateFn(selectedEmployeeList[index]);

  String defaultGroupDisplayImage =
      'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0';

  List<EmployeeDataModelStruct> employeeListData = [];
  void addToEmployeeListData(EmployeeDataModelStruct item) =>
      employeeListData.add(item);
  void removeFromEmployeeListData(EmployeeDataModelStruct item) =>
      employeeListData.remove(item);
  void removeAtIndexFromEmployeeListData(int index) =>
      employeeListData.removeAt(index);
  void insertAtIndexInEmployeeListData(
          int index, EmployeeDataModelStruct item) =>
      employeeListData.insert(index, item);
  void updateEmployeeListDataAtIndex(
          int index, Function(EmployeeDataModelStruct) updateFn) =>
      employeeListData[index] = updateFn(employeeListData[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_selectGroupChatImage = false;
  FFUploadedFile uploadedLocalFile_selectGroupChatImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for SearchBox widget.
  FocusNode? searchBoxFocusNode;
  TextEditingController? searchBoxTextController;
  String? Function(BuildContext, String?)? searchBoxTextControllerValidator;
  // Stores action output result for [Backend Call - API (getAllEmployeeAPI)] action in IconButton widget.
  ApiCallResponse? getEmployee;
  bool isDataUploading_uploadGroupChatImage = false;
  FFUploadedFile uploadedLocalFile_uploadGroupChatImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadGroupChatImage = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    searchBoxFocusNode?.dispose();
    searchBoxTextController?.dispose();
  }
}
