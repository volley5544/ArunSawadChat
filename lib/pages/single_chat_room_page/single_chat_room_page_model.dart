import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'single_chat_room_page_widget.dart' show SingleChatRoomPageWidget;
import 'package:flutter/material.dart';

class SingleChatRoomPageModel
    extends FlutterFlowModel<SingleChatRoomPageWidget> {
  ///  Local state fields for this page.

  List<bool> timeChatIsVisibleList = [];
  void addToTimeChatIsVisibleList(bool item) => timeChatIsVisibleList.add(item);
  void removeFromTimeChatIsVisibleList(bool item) =>
      timeChatIsVisibleList.remove(item);
  void removeAtIndexFromTimeChatIsVisibleList(int index) =>
      timeChatIsVisibleList.removeAt(index);
  void insertAtIndexInTimeChatIsVisibleList(int index, bool item) =>
      timeChatIsVisibleList.insert(index, item);
  void updateTimeChatIsVisibleListAtIndex(int index, Function(bool) updateFn) =>
      timeChatIsVisibleList[index] = updateFn(timeChatIsVisibleList[index]);

  bool isSendMessageSuccess = false;

  FFUploadedFile? imageUploadTemp;

  List<DocumentReference> sawadChatRoomRefDefault = [];
  void addToSawadChatRoomRefDefault(DocumentReference item) =>
      sawadChatRoomRefDefault.add(item);
  void removeFromSawadChatRoomRefDefault(DocumentReference item) =>
      sawadChatRoomRefDefault.remove(item);
  void removeAtIndexFromSawadChatRoomRefDefault(int index) =>
      sawadChatRoomRefDefault.removeAt(index);
  void insertAtIndexInSawadChatRoomRefDefault(
          int index, DocumentReference item) =>
      sawadChatRoomRefDefault.insert(index, item);
  void updateSawadChatRoomRefDefaultAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      sawadChatRoomRefDefault[index] = updateFn(sawadChatRoomRefDefault[index]);

  String? chatMessagesTemp;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in SingleChatRoomPage widget.
  UserCustomRecord? getUserProfile;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadDataKh5 = false;
  FFUploadedFile uploadedLocalFile_uploadDataKh5 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - Create Document] action in ImageIcon widget.
  ChatMessagesRecord? createImageMessageDoc1;
  // Stores action output result for [Custom Action - uploadFileFirebaseStorage] action in ImageIcon widget.
  String? uploadImageToStorage;
  // Stores action output result for [Backend Call - Create Document] action in SendIcon widget.
  ChatMessagesRecord? createMessageDoc2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
