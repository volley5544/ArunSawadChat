import '/backend/backend.dart';
import '/components/empty_chat_component_widget.dart';
import '/components/work_follow_up_message_component_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'work_follow_up_group_page_model.dart';
export 'work_follow_up_group_page_model.dart';

class WorkFollowUpGroupPageWidget extends StatefulWidget {
  const WorkFollowUpGroupPageWidget({super.key});

  static String routeName = 'WorkFollowUpGroupPage';
  static String routePath = '/workFollowUpGroupPage';

  @override
  State<WorkFollowUpGroupPageWidget> createState() =>
      _WorkFollowUpGroupPageWidgetState();
}

class _WorkFollowUpGroupPageWidgetState
    extends State<WorkFollowUpGroupPageWidget> {
  late WorkFollowUpGroupPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkFollowUpGroupPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<WorkFollowUpChatRoomRecord>(
      stream: WorkFollowUpChatRoomRecord.getDocument(
          FFAppState().workFollowUpGroupRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final workFollowUpGroupPageWorkFollowUpChatRoomRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFFFF6500),
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: FlutterFlowExpandedImageView(
                                image: OctoImage(
                                  placeholderBuilder: (_) => SizedBox.expand(
                                    child: Image(
                                      image: BlurHashImage(
                                          workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                              .roomDisplayBlurHash),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  image: CachedNetworkImageProvider(
                                    valueOrDefault<String>(
                                      workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                          .roomDisplayImage,
                                      'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                                    ),
                                  ),
                                  fit: BoxFit.contain,
                                ),
                                allowRotation: false,
                                tag: valueOrDefault<String>(
                                  workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                      .roomDisplayImage,
                                  'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                                ),
                                useHeroAnimation: true,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: valueOrDefault<String>(
                            workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                .roomDisplayImage,
                            'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                          ),
                          transitionOnUserGestures: true,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: OctoImage(
                              placeholderBuilder: (_) => SizedBox.expand(
                                child: Image(
                                  image: BlurHashImage(
                                      workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                          .roomDisplayBlurHash),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              image: CachedNetworkImageProvider(
                                valueOrDefault<String>(
                                  workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                      .roomDisplayImage,
                                  'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                                ),
                              ),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      var messageRecordReference = MessageRecord.createDoc(
                          FFAppState().workFollowUpGroupRef!);
                      await messageRecordReference.set({
                        ...createMessageRecordData(
                          messageType: 'text',
                          messageText:
                              'แจ้งชำระเงินสำเร็จ (KBank)วัน/เวลาที่ส่งข้อความ : 27/03/2026 15:59:19ระบบ : ศรีสวัสดิ์ ประกันทันใจRef1 : 43064320260327151831Ref2 : 0010120260305862Biller ID : 010555912674765Sender Bank : SCBTransaction ID : KB001_20260327_014ED433E228A634D96สถานะ : ชำระแล้วจำนวนเงิน : 967.28วันที่ชำระเงิน : 2026-03-27เวลาชำระเงิน : 15:59:18รายละเอียดเพิ่มเติมชื่อลูกค้า : นางสาวอารียา ไชยแสนเบอร์โทรลูกค้า : 0637860359สาขา : ตำบลศรีสงครามบริษัท : ไทยไพบูลย์ประกันภัยรหัส source_refer_id : 215480รหัส log_source_id : 15833110',
                          senderType: 'system',
                        ),
                        ...mapToFirestore(
                          {
                            'time': FieldValue.serverTimestamp(),
                          },
                        ),
                      });
                      _model.createInitialMessageDoc =
                          MessageRecord.getDocumentFromData({
                        ...createMessageRecordData(
                          messageType: 'text',
                          messageText:
                              'แจ้งชำระเงินสำเร็จ (KBank)วัน/เวลาที่ส่งข้อความ : 27/03/2026 15:59:19ระบบ : ศรีสวัสดิ์ ประกันทันใจRef1 : 43064320260327151831Ref2 : 0010120260305862Biller ID : 010555912674765Sender Bank : SCBTransaction ID : KB001_20260327_014ED433E228A634D96สถานะ : ชำระแล้วจำนวนเงิน : 967.28วันที่ชำระเงิน : 2026-03-27เวลาชำระเงิน : 15:59:18รายละเอียดเพิ่มเติมชื่อลูกค้า : นางสาวอารียา ไชยแสนเบอร์โทรลูกค้า : 0637860359สาขา : ตำบลศรีสงครามบริษัท : ไทยไพบูลย์ประกันภัยรหัส source_refer_id : 215480รหัส log_source_id : 15833110',
                          senderType: 'system',
                        ),
                        ...mapToFirestore(
                          {
                            'time': DateTime.now(),
                          },
                        ),
                      }, messageRecordReference);

                      await FFAppState()
                          .workFollowUpGroupRef!
                          .update(createWorkFollowUpChatRoomRecordData(
                            lastMessage:
                                _model.createInitialMessageDoc?.messageText,
                            lastMessageBy: 'น้องทันใจ',
                            lastMessageTime:
                                _model.createInitialMessageDoc?.time,
                          ));

                      safeSetState(() {});
                    },
                    child: Text(
                      workFollowUpGroupPageWorkFollowUpChatRoomRecord.roomName,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await _model.listViewController?.animateTo(
                        _model.listViewController!.position.maxScrollExtent,
                        duration: Duration(milliseconds: 100),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      width: 1.0,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.settings_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    var messageRecordReference = MessageRecord.createDoc(
                        FFAppState().workFollowUpGroupRef!);
                    await messageRecordReference.set({
                      ...createMessageRecordData(
                        messageType: 'text',
                        messageText:
                            'ตรวจสอบข้อมูลไม่สำเร็จ (KBank)ระบบ : ศรีสวัสดิ์ ประกันทันใจวัน/เวลาที่ส่งข้อความ : 27/03/2026 15:09:46Ref1 : 39758620260130140942Ref2 : 0010220260105472Biller ID : 98200Sender Bank : KBankTransaction ID : 98200270320261509463166799จำนวนเงิน : 1,590.00ResponseCode : 0003ResponseDescription : Payment time expiredรายละเอียดเพิ่มเติมชื่อลูกค้า : นางนางแสงจันทร์ สีพั่วเบอร์โทรลูกค้า : 0656245949สาขา : กุฉินารายณ์ตรงข้ามบิ๊กซีบริษัท : ประกันภัย-เมืองไทยต้องชำระเงินภายในวัน/เวลา : 30/01/2026 (18:24:57)',
                        senderType: 'system',
                      ),
                      ...mapToFirestore(
                        {
                          'time': FieldValue.serverTimestamp(),
                        },
                      ),
                    });
                    _model.createInitialMessageDoc2 =
                        MessageRecord.getDocumentFromData({
                      ...createMessageRecordData(
                        messageType: 'text',
                        messageText:
                            'ตรวจสอบข้อมูลไม่สำเร็จ (KBank)ระบบ : ศรีสวัสดิ์ ประกันทันใจวัน/เวลาที่ส่งข้อความ : 27/03/2026 15:09:46Ref1 : 39758620260130140942Ref2 : 0010220260105472Biller ID : 98200Sender Bank : KBankTransaction ID : 98200270320261509463166799จำนวนเงิน : 1,590.00ResponseCode : 0003ResponseDescription : Payment time expiredรายละเอียดเพิ่มเติมชื่อลูกค้า : นางนางแสงจันทร์ สีพั่วเบอร์โทรลูกค้า : 0656245949สาขา : กุฉินารายณ์ตรงข้ามบิ๊กซีบริษัท : ประกันภัย-เมืองไทยต้องชำระเงินภายในวัน/เวลา : 30/01/2026 (18:24:57)',
                        senderType: 'system',
                      ),
                      ...mapToFirestore(
                        {
                          'time': DateTime.now(),
                        },
                      ),
                    }, messageRecordReference);

                    await FFAppState()
                        .workFollowUpGroupRef!
                        .update(createWorkFollowUpChatRoomRecordData(
                          lastMessage:
                              _model.createInitialMessageDoc2?.messageText,
                          lastMessageBy: 'น้องทันใจ',
                          lastMessageTime:
                              _model.createInitialMessageDoc2?.time,
                        ));

                    safeSetState(() {});
                  },
                ),
              ],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if ((workFollowUpGroupPageWorkFollowUpChatRoomRecord !=
                          null) &&
                      true)
                    Expanded(
                      child: StreamBuilder<List<MessageRecord>>(
                        stream: queryMessageRecord(
                          parent: FFAppState().workFollowUpGroupRef,
                          queryBuilder: (messageRecord) =>
                              messageRecord.orderBy('time', descending: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<MessageRecord> listViewMessageRecordList =
                              snapshot.data!;
                          if (listViewMessageRecordList.isEmpty) {
                            return Center(
                              child: EmptyChatComponentWidget(),
                            );
                          }

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              12.0,
                              0,
                              12.0,
                            ),
                            reverse: true,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewMessageRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 8.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewMessageRecord =
                                  listViewMessageRecordList[listViewIndex];
                              return wrapWithModel(
                                model: _model.workFollowUpMessageComponentModels
                                    .getModel(
                                  listViewIndex.toString(),
                                  listViewIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: WorkFollowUpMessageComponentWidget(
                                  key: Key(
                                    'Key2ud_${listViewIndex.toString()}',
                                  ),
                                  index: listViewIndex,
                                  isSendMessageSuccess:
                                      _model.isSendMessageSuccess,
                                  thisChatIsVisibleList:
                                      _model.timeChatIsVisibleList,
                                  messageDocData: listViewMessageRecord,
                                  updateThisChatIsVisibleList:
                                      (boolValue) async {
                                    _model.updateTimeChatIsVisibleListAtIndex(
                                      listViewIndex,
                                      (_) => boolValue,
                                    );
                                    safeSetState(() {});
                                  },
                                ),
                              );
                            },
                            controller: _model.listViewController,
                          );
                        },
                      ),
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 16.0),
                          child: Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 4.0, 8.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var _shouldSetState = false;
                                        final selectedMedia = await selectMedia(
                                          maxWidth: 1920.00,
                                          maxHeight: 1920.00,
                                          imageQuality: 50,
                                          includeBlurHash: true,
                                          multiImage: false,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          safeSetState(() => _model
                                                  .isDataUploading_uploadDataKh5CameraWorkFollowUp =
                                              true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          try {
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                          originalFilename: m
                                                              .originalFilename,
                                                        ))
                                                    .toList();
                                          } finally {
                                            _model.isDataUploading_uploadDataKh5CameraWorkFollowUp =
                                                false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                              selectedMedia.length) {
                                            safeSetState(() {
                                              _model.uploadedLocalFile_uploadDataKh5CameraWorkFollowUp =
                                                  selectedUploadedFiles.first;
                                            });
                                          } else {
                                            safeSetState(() {});
                                            return;
                                          }
                                        }

                                        if (!((_model.uploadedLocalFile_uploadDataKh5CameraWorkFollowUp
                                                    .bytes?.isNotEmpty ??
                                                false))) {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                        _model.isSendMessageSuccess = false;
                                        safeSetState(() {});
                                        _model.imageUploadTemp = _model
                                            .uploadedLocalFile_uploadDataKh5CameraWorkFollowUp;
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.isDataUploading_uploadDataKh5CameraWorkFollowUp =
                                              false;
                                          _model.uploadedLocalFile_uploadDataKh5CameraWorkFollowUp =
                                              FFUploadedFile(
                                                  bytes: Uint8List.fromList([]),
                                                  originalFilename: '');
                                        });

                                        _model.uploadImageToStorageCamera =
                                            await actions
                                                .uploadFileFirebaseStorage(
                                          'WorkFollowUpUpload/docref',
                                          _model.imageUploadTemp,
                                        );
                                        _shouldSetState = true;
                                        _model.isSendMessageSuccess = true;
                                        safeSetState(() {});
                                        _model.imageUploadTemp = null;
                                        safeSetState(() {});
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var _shouldSetState = false;
                                        final selectedMedia = await selectMedia(
                                          imageQuality: 30,
                                          includeBlurHash: true,
                                          mediaSource: MediaSource.photoGallery,
                                          multiImage: false,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          safeSetState(() => _model
                                                  .isDataUploading_uploadDataKh5WorkFollowUp =
                                              true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          try {
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                          originalFilename: m
                                                              .originalFilename,
                                                        ))
                                                    .toList();
                                          } finally {
                                            _model.isDataUploading_uploadDataKh5WorkFollowUp =
                                                false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                              selectedMedia.length) {
                                            safeSetState(() {
                                              _model.uploadedLocalFile_uploadDataKh5WorkFollowUp =
                                                  selectedUploadedFiles.first;
                                            });
                                          } else {
                                            safeSetState(() {});
                                            return;
                                          }
                                        }

                                        if (!((_model.uploadedLocalFile_uploadDataKh5WorkFollowUp
                                                    .bytes?.isNotEmpty ??
                                                false))) {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                        _model.isSendMessageSuccess = false;
                                        safeSetState(() {});
                                        _model.imageUploadTemp = _model
                                            .uploadedLocalFile_uploadDataKh5WorkFollowUp;
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.isDataUploading_uploadDataKh5WorkFollowUp =
                                              false;
                                          _model.uploadedLocalFile_uploadDataKh5WorkFollowUp =
                                              FFUploadedFile(
                                                  bytes: Uint8List.fromList([]),
                                                  originalFilename: '');
                                        });

                                        _model.uploadImageToStorage =
                                            await actions
                                                .uploadFileFirebaseStorage(
                                          'WorkFollowUpUpload/docref',
                                          _model.imageUploadTemp,
                                        );
                                        _shouldSetState = true;
                                        _model.isSendMessageSuccess = true;
                                        safeSetState(() {});
                                        _model.imageUploadTemp = null;
                                        safeSetState(() {});
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.image_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await actions.myScrollToIndex(
                                          random_data.randomInteger(0, 42),
                                        );
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              content:
                                                  Text('scroll to success!'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: Icon(
                                        Icons.mic_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: _model.textController,
                                              focusNode:
                                                  _model.textFieldFocusNode,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'พิมพ์ข้อความที่นี่',
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                              validator: _model
                                                  .textControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await actions.myScrollToIndex(
                                                random_data.randomInteger(
                                                    0, 43),
                                              );
                                            },
                                            child: Icon(
                                              Icons.insert_emoticon_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                              size: 32.0,
                                            ),
                                          ),
                                        ].addToEnd(SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var _shouldSetState = false;
                                        if (!(_model.textController.text != '')) {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                        _model.isSendMessageSuccess = false;
                                        _model.chatMessagesTemp =
                                            _model.textController.text;
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.textController?.clear();
                                        });

                                        var messageRecordReference =
                                            MessageRecord.createDoc(FFAppState()
                                                .workFollowUpGroupRef!);
                                        await messageRecordReference.set({
                                          ...createMessageRecordData(
                                            messageType: 'text',
                                            messageText:
                                                '${_model.textController.text}',
                                            userLevel:
                                                '${FFAppState().profileApiData.level}',
                                            userBranchCode:
                                                '${FFAppState().profileApiData.branch}',
                                            userBranchName:
                                                '${FFAppState().profileApiData.department}',
                                            isReply: false,
                                            senderType: 'normal',
                                            userEmployeeId:
                                                '${FFAppState().profileApiData.empCode}',
                                            userName:
                                                '${FFAppState().profileApiData.fullName}',
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                        _model.createMessageDoc2 =
                                            MessageRecord.getDocumentFromData({
                                          ...createMessageRecordData(
                                            messageType: 'text',
                                            messageText:
                                                '${_model.textController.text}',
                                            userLevel:
                                                '${FFAppState().profileApiData.level}',
                                            userBranchCode:
                                                '${FFAppState().profileApiData.branch}',
                                            userBranchName:
                                                '${FFAppState().profileApiData.department}',
                                            isReply: false,
                                            senderType: 'normal',
                                            userEmployeeId:
                                                '${FFAppState().profileApiData.empCode}',
                                            userName:
                                                '${FFAppState().profileApiData.fullName}',
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'time': DateTime.now(),
                                            },
                                          ),
                                        }, messageRecordReference);
                                        _shouldSetState = true;

                                        await workFollowUpGroupPageWorkFollowUpChatRoomRecord
                                            .reference
                                            .update(
                                                createWorkFollowUpChatRoomRecordData(
                                          lastMessage: _model
                                              .createMessageDoc2?.messageText,
                                          lastMessageTime:
                                              _model.createMessageDoc2?.time,
                                          lastMessageBy: _model
                                              .createMessageDoc2?.userName,
                                        ));
                                        _model.isSendMessageSuccess = true;
                                        _model.chatMessagesTemp = null;
                                        safeSetState(() {});
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.send_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .grayIcon,
                                        size: 26.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
