import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_chat_component_widget.dart';
import '/components/work_follow_up_message_component_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'work_follow_up_group_page_widget.dart' show WorkFollowUpGroupPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class WorkFollowUpGroupPageModel
    extends FlutterFlowModel<WorkFollowUpGroupPageWidget> {
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

  bool isSendMessageSuccess = true;

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

  // Stores action output result for [Backend Call - Create Document] action in Text widget.
  MessageRecord? createInitialMessageDoc;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  MessageRecord? createInitialMessageDoc2;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Models for WorkFollowUpMessageComponent dynamic component.
  late FlutterFlowDynamicModels<WorkFollowUpMessageComponentModel>
      workFollowUpMessageComponentModels;
  bool isDataUploading_uploadDataKh5CameraWorkFollowUp = false;
  FFUploadedFile uploadedLocalFile_uploadDataKh5CameraWorkFollowUp =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - uploadFileFirebaseStorage] action in CameraIcon widget.
  String? uploadImageToStorageCamera;
  bool isDataUploading_uploadDataKh5WorkFollowUp = false;
  FFUploadedFile uploadedLocalFile_uploadDataKh5WorkFollowUp =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - uploadFileFirebaseStorage] action in ImageIcon widget.
  String? uploadImageToStorage;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    workFollowUpMessageComponentModels =
        FlutterFlowDynamicModels(() => WorkFollowUpMessageComponentModel());
  }

  @override
  void dispose() {
    listViewController?.dispose();
    workFollowUpMessageComponentModels.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future sentMessageBlock(
    BuildContext context, {
    Future Function()? resetFormFields,
  }) async {
    MessageRecord? createMessageDoc2;

    if (!(textController.text != '')) {
      return;
    }
    isSendMessageSuccess = false;
    chatMessagesTemp = textController.text;
    await resetFormFields?.call();

    var messageRecordReference =
        MessageRecord.createDoc(FFAppState().workFollowUpGroupRef!);
    await messageRecordReference.set({
      ...createMessageRecordData(
        messageType: 'text',
        messageText: '${chatMessagesTemp}',
        userLevel: '${FFAppState().profileApiData.level}',
        userBranchCode: '${FFAppState().profileApiData.branch}',
        userBranchName: '${FFAppState().profileApiData.branchName}',
        isReply: false,
        senderType: 'normal',
        userEmployeeId: '${FFAppState().profileApiData.empCode}',
        userName: '${FFAppState().profileApiData.fullName}',
      ),
      ...mapToFirestore(
        {
          'time': FieldValue.serverTimestamp(),
        },
      ),
    });
    createMessageDoc2 = MessageRecord.getDocumentFromData({
      ...createMessageRecordData(
        messageType: 'text',
        messageText: '${chatMessagesTemp}',
        userLevel: '${FFAppState().profileApiData.level}',
        userBranchCode: '${FFAppState().profileApiData.branch}',
        userBranchName: '${FFAppState().profileApiData.branchName}',
        isReply: false,
        senderType: 'normal',
        userEmployeeId: '${FFAppState().profileApiData.empCode}',
        userName: '${FFAppState().profileApiData.fullName}',
      ),
      ...mapToFirestore(
        {
          'time': DateTime.now(),
        },
      ),
    }, messageRecordReference);

    await workFollowUpGroupPageWorkFollowUpChatRoomRecord.reference
        .update(createWorkFollowUpChatRoomRecordData(
      lastMessage: createMessageDoc2.messageText,
      lastMessageTime: createMessageDoc2.time,
      lastMessageBy: createMessageDoc2.userName,
    ));
    isSendMessageSuccess = true;
    chatMessagesTemp = null;
  }
}
