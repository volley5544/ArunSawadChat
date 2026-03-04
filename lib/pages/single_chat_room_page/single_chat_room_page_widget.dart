import '/backend/backend.dart';
import '/components/empty_chat_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'single_chat_room_page_model.dart';
export 'single_chat_room_page_model.dart';

class SingleChatRoomPageWidget extends StatefulWidget {
  const SingleChatRoomPageWidget({
    super.key,
    required this.chatRoomDocRef,
  });

  final DocumentReference? chatRoomDocRef;

  static String routeName = 'SingleChatRoomPage';
  static String routePath = '/singleChatRoomPage';

  @override
  State<SingleChatRoomPageWidget> createState() =>
      _SingleChatRoomPageWidgetState();
}

class _SingleChatRoomPageWidgetState extends State<SingleChatRoomPageWidget>
    with TickerProviderStateMixin {
  late SingleChatRoomPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleChatRoomPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getUserProfile =
          await UserCustomRecord.getDocumentOnce(FFAppState().userDocRef!);
      FFAppState().userProfileData = UserProfileDataModelStruct(
        createdTime: _model.getUserProfile?.createdTime,
        email: _model.getUserProfile?.email,
        uid: _model.getUserProfile?.uid,
        imgProfile: _model.getUserProfile?.imgProfile,
        employeeId: _model.getUserProfile?.employeeId,
        fcmToken: _model.getUserProfile!.hasFcmToken()
            ? _model.getUserProfile?.fcmToken
            : '',
        imgProfileBlurHash: _model.getUserProfile!.hasImgProfileBlurHash()
            ? _model.getUserProfile?.imgProfileBlurHash
            : '',
        goldCupConsent: _model.getUserProfile!.hasGoldCupConsent()
            ? _model.getUserProfile?.goldCupConsent
            : false,
        consentDate: _model.getUserProfile!.hasConsentDate()
            ? _model.getUserProfile?.consentDate
            : getCurrentTimestamp,
        sawadChatRoomRef: _model.getUserProfile!.hasSawadChatRoomRef()
            ? _model.getUserProfile?.sawadChatRoomRef
            : _model.sawadChatRoomRefDefault,
      );
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, -15.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, -15.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, -15.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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

    return StreamBuilder<SawadChatRoomRecord>(
      stream: SawadChatRoomRecord.getDocument(widget.chatRoomDocRef!),
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

        final singleChatRoomPageSawadChatRoomRecord = snapshot.data!;

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
                  if (singleChatRoomPageSawadChatRoomRecord.chatRoomType ==
                      'group')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                            singleChatRoomPageSawadChatRoomRecord
                                                .chatRoomDisplayImageBlurHash),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    image: CachedNetworkImageProvider(
                                      valueOrDefault<String>(
                                        singleChatRoomPageSawadChatRoomRecord
                                            .chatRoomDisplayImageUrl,
                                        'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                                      ),
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: valueOrDefault<String>(
                                    singleChatRoomPageSawadChatRoomRecord
                                        .chatRoomDisplayImageUrl,
                                    'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                                  ),
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: valueOrDefault<String>(
                              singleChatRoomPageSawadChatRoomRecord
                                  .chatRoomDisplayImageUrl,
                              'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fgroup-chat.png?alt=media&token=ec0e798c-11e6-4bc9-8b0a-7253e3960af0',
                            ),
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: OctoImage(
                                placeholderBuilder: (_) => SizedBox.expand(
                                  child: Image(
                                    image: BlurHashImage(
                                        singleChatRoomPageSawadChatRoomRecord
                                            .chatRoomDisplayImageBlurHash),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                image: CachedNetworkImageProvider(
                                  valueOrDefault<String>(
                                    singleChatRoomPageSawadChatRoomRecord
                                        .chatRoomDisplayImageUrl,
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
                  Text(
                    valueOrDefault<String>(
                      singleChatRoomPageSawadChatRoomRecord.chatRoomType ==
                              'single'
                          ? singleChatRoomPageSawadChatRoomRecord.usersName
                              .elementAtOrNull(
                                  singleChatRoomPageSawadChatRoomRecord
                                              .usersRef.firstOrNull ==
                                          FFAppState().userDocRef
                                      ? 1
                                      : 0)
                          : '${singleChatRoomPageSawadChatRoomRecord.chatRoomName} (${singleChatRoomPageSawadChatRoomRecord.usersRef.length.toString()})',
                      'room_name',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
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
                  onPressed: () {
                    print('IconButton pressed ...');
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
                  Expanded(
                    child: StreamBuilder<List<ChatMessagesRecord>>(
                      stream: queryChatMessagesRecord(
                        parent: widget.chatRoomDocRef,
                        queryBuilder: (chatMessagesRecord) =>
                            chatMessagesRecord.orderBy('message_time',
                                descending: true),
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
                        List<ChatMessagesRecord>
                            listViewChatMessagesRecordList = snapshot.data!;
                        if (listViewChatMessagesRecordList.isEmpty) {
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
                          itemCount: listViewChatMessagesRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 8.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewChatMessagesRecord =
                                listViewChatMessagesRecordList[listViewIndex];
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (listViewChatMessagesRecord.messageBy !=
                                    FFAppState().userDocRef)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Builder(
                                              builder: (context) {
                                                if (listViewChatMessagesRecord
                                                        .messageType !=
                                                    'setting') {
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Builder(
                                                        builder: (context) {
                                                          if (listViewChatMessagesRecord
                                                                  .messageByName !=
                                                              'system') {
                                                            return Container(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: InkWell(
                                                                splashColor:
                                                                    Colors
                                                                        .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image:
                                                                            OctoImage(
                                                                          placeholderBuilder: (_) =>
                                                                              SizedBox.expand(
                                                                            child: Image(
                                                                              image: BlurHashImage(listViewChatMessagesRecord.hasMessageByDisplayBlurHash() ? listViewChatMessagesRecord.messageByDisplayBlurHash : 'LKOp[Mof~qof?bfQRjfQ%MfQIUfQ'),
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          image:
                                                                              CachedNetworkImageProvider(
                                                                            valueOrDefault<String>(
                                                                              listViewChatMessagesRecord.messageByDisplayUrl,
                                                                              'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fdefault-profile-display-image.png?alt=media&token=ac87cd0c-8ed9-47e1-8492-2ca19dd45bc7',
                                                                            ),
                                                                          ),
                                                                          fit:
                                                                              BoxFit.contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag: valueOrDefault<
                                                                            String>(
                                                                          listViewChatMessagesRecord.messageByDisplayUrl,
                                                                          'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fdefault-profile-display-image.png?alt=media&token=ac87cd0c-8ed9-47e1-8492-2ca19dd45bc7' +
                                                                              '$listViewIndex',
                                                                        ),
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag: valueOrDefault<
                                                                      String>(
                                                                    listViewChatMessagesRecord
                                                                        .messageByDisplayUrl,
                                                                    'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fdefault-profile-display-image.png?alt=media&token=ac87cd0c-8ed9-47e1-8492-2ca19dd45bc7' +
                                                                        '$listViewIndex',
                                                                  ),
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                    child:
                                                                        OctoImage(
                                                                      placeholderBuilder:
                                                                          (_) =>
                                                                              SizedBox.expand(
                                                                        child:
                                                                            Image(
                                                                          image: BlurHashImage(listViewChatMessagesRecord.hasMessageByDisplayBlurHash()
                                                                              ? listViewChatMessagesRecord.messageByDisplayBlurHash
                                                                              : 'LKOp[Mof~qof?bfQRjfQ%MfQIUfQ'),
                                                                          fit:
                                                                              BoxFit.cover,
                                                                        ),
                                                                      ),
                                                                      image:
                                                                          CachedNetworkImageProvider(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewChatMessagesRecord.messageByDisplayUrl,
                                                                          'https://firebasestorage.googleapis.com/v0/b/flut-flow-test.appspot.com/o/UsersProfileImage%2Fdefault-profile-display-image.png?alt=media&token=ac87cd0c-8ed9-47e1-8492-2ca19dd45bc7',
                                                                        ),
                                                                      ),
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          double.infinity,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          } else {
                                                            return Container(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: InkWell(
                                                                splashColor:
                                                                    Colors
                                                                        .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image:
                                                                            Image.asset(
                                                                          'assets/images/untitled1112.png',
                                                                          fit:
                                                                              BoxFit.contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            'imageTag3',
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      'imageTag3',
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/untitled1112.png',
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          double.infinity,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                        },
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Text(
                                                              listViewChatMessagesRecord
                                                                          .messageByName !=
                                                                      'system'
                                                                  ? listViewChatMessagesRecord
                                                                      .messageByName
                                                                  : 'น้องอรุณ',
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'textOnPageLoadAnimation1']!),
                                                          ),
                                                          Builder(
                                                            builder:
                                                                (context) {
                                                              if (listViewChatMessagesRecord
                                                                      .messageType ==
                                                                  'text') {
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      if (_model
                                                                          .timeChatIsVisibleList
                                                                          .elementAtOrNull(0)!) {
                                                                        _model
                                                                            .updateTimeChatIsVisibleListAtIndex(
                                                                          0,
                                                                          (_) =>
                                                                              false,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      } else {
                                                                        _model
                                                                            .updateTimeChatIsVisibleListAtIndex(
                                                                          0,
                                                                          (_) =>
                                                                              true,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        minHeight:
                                                                            40.0,
                                                                        maxWidth:
                                                                            MediaQuery.sizeOf(context).width * 0.65,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color:
                                                                            Color(0xFF3F37FF),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius: 4.0,
                                                                            color: Color(0x33000000),
                                                                            offset: Offset(
                                                                              0.0,
                                                                              2.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          listViewChatMessagesRecord.messageText,
                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                font: GoogleFonts.inter(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: Colors.white,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              } else {
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        180.0,
                                                                    height:
                                                                        180.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(16.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          4.0,
                                                                          4.0,
                                                                          4.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await Navigator.push(
                                                                            context,
                                                                            PageTransition(
                                                                              type: PageTransitionType.fade,
                                                                              child: FlutterFlowExpandedImageView(
                                                                                image: OctoImage(
                                                                                  placeholderBuilder: (_) => SizedBox.expand(
                                                                                    child: Image(
                                                                                      image: BlurHashImage(listViewChatMessagesRecord.messageImageBlurHash),
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  image: CachedNetworkImageProvider(
                                                                                    listViewChatMessagesRecord.messageImageUrl,
                                                                                  ),
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                allowRotation: false,
                                                                                tag: listViewChatMessagesRecord.messageImageUrl,
                                                                                useHeroAnimation: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                        child:
                                                                            Hero(
                                                                          tag:
                                                                              listViewChatMessagesRecord.messageImageUrl,
                                                                          transitionOnUserGestures:
                                                                              true,
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius: BorderRadius.circular(16.0),
                                                                            child: OctoImage(
                                                                              placeholderBuilder: (_) => SizedBox.expand(
                                                                                child: Image(
                                                                                  image: BlurHashImage(listViewChatMessagesRecord.messageImageBlurHash),
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              image: CachedNetworkImageProvider(
                                                                                listViewChatMessagesRecord.messageImageUrl,
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
                                                                );
                                                              }
                                                            },
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              dateTimeFormat(
                                                                  "Hm",
                                                                  listViewChatMessagesRecord
                                                                      .messageTime!),
                                                              style: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .grayIcon,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'textOnPageLoadAnimation2']!),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                } else {
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        listViewChatMessagesRecord
                                                            .messageText,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font:
                                                                  GoogleFonts
                                                                      .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: FlutterFlowTheme.of(
                                                                      context)
                                                                  .grayIcon,
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle: FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                            ),
                                                      ),
                                                    ],
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if (listViewChatMessagesRecord.messageBy ==
                                    FFAppState().userDocRef)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  if (listViewChatMessagesRecord
                                                          .messageType ==
                                                      'text') {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .timeChatIsVisibleList
                                                            .elementAtOrNull(
                                                                listViewIndex)!) {
                                                          _model
                                                              .updateTimeChatIsVisibleListAtIndex(
                                                            listViewIndex,
                                                            (_) => false,
                                                          );
                                                          safeSetState(() {});
                                                        } else {
                                                          _model
                                                              .updateTimeChatIsVisibleListAtIndex(
                                                            listViewIndex,
                                                            (_) => true,
                                                          );
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          minHeight: 40.0,
                                                          maxWidth: MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width *
                                                              0.65,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      8.0,
                                                                      12.0,
                                                                      8.0),
                                                          child: Text(
                                                            listViewChatMessagesRecord
                                                                .messageText,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .black600,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  } else {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (_model
                                                            .timeChatIsVisibleList
                                                            .elementAtOrNull(
                                                                listViewIndex)!) {
                                                          _model
                                                              .updateTimeChatIsVisibleListAtIndex(
                                                            listViewIndex,
                                                            (_) => false,
                                                          );
                                                          safeSetState(() {});
                                                        } else {
                                                          _model
                                                              .updateTimeChatIsVisibleListAtIndex(
                                                            listViewIndex,
                                                            (_) => true,
                                                          );
                                                          safeSetState(() {});
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 180.0,
                                                        height: 180.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                PageTransition(
                                                                  type: PageTransitionType
                                                                      .fade,
                                                                  child:
                                                                      FlutterFlowExpandedImageView(
                                                                    image:
                                                                        OctoImage(
                                                                      placeholderBuilder:
                                                                          (_) =>
                                                                              SizedBox.expand(
                                                                        child:
                                                                            Image(
                                                                          image:
                                                                              BlurHashImage(listViewChatMessagesRecord.messageImageBlurHash),
                                                                          fit:
                                                                              BoxFit.cover,
                                                                        ),
                                                                      ),
                                                                      image:
                                                                          CachedNetworkImageProvider(
                                                                        listViewChatMessagesRecord
                                                                            .messageImageUrl,
                                                                      ),
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                    allowRotation:
                                                                        false,
                                                                    tag: listViewChatMessagesRecord
                                                                        .messageImageUrl,
                                                                    useHeroAnimation:
                                                                        true,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Hero(
                                                              tag: listViewChatMessagesRecord
                                                                  .messageImageUrl,
                                                              transitionOnUserGestures:
                                                                  true,
                                                              child:
                                                                  ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                                child:
                                                                    OctoImage(
                                                                  placeholderBuilder: (_) =>
                                                                      SizedBox
                                                                          .expand(
                                                                    child:
                                                                        Image(
                                                                      image: BlurHashImage(
                                                                          listViewChatMessagesRecord.messageImageBlurHash),
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  image:
                                                                      CachedNetworkImageProvider(
                                                                    listViewChatMessagesRecord
                                                                        .messageImageUrl,
                                                                  ),
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      "Hm",
                                                      listViewChatMessagesRecord
                                                          .messageTime!),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.inter(
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .grayIcon,
                                                        fontSize: 12.0,
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
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation3']!),
                                              ),
                                            ],
                                          ),
                                          if (!_model.isSendMessageSuccess &&
                                              (listViewIndex == 0))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      4.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 18.0,
                                                height: 18.0,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Color(0xFF0087FF),
                                                    width: 2.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((_model.isSendMessageSuccess &&
                                                  (listViewIndex == 0)) ||
                                              (listViewIndex > 0))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      4.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 18.0,
                                                height: 18.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF0087FF),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Color(0xFF0087FF),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                alignment:
                                                    AlignmentDirectional(
                                                        0.0, 0.0),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Icon(
                                                    Icons.check_outlined,
                                                    color: Color(0xFFE3E3E3),
                                                    size: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            );
                          },
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
                                  12.0, 4.0, 12.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 7,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
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
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
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
                                                  .isDataUploading_uploadDataKh5 =
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
                                            _model.isDataUploading_uploadDataKh5 =
                                                false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                              selectedMedia.length) {
                                            safeSetState(() {
                                              _model.uploadedLocalFile_uploadDataKh5 =
                                                  selectedUploadedFiles.first;
                                            });
                                          } else {
                                            safeSetState(() {});
                                            return;
                                          }
                                        }

                                        if (!((_model.uploadedLocalFile_uploadDataKh5
                                                    .bytes?.isNotEmpty ??
                                                false))) {
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                        _model.isSendMessageSuccess = false;
                                        safeSetState(() {});
                                        _model.imageUploadTemp = _model
                                            .uploadedLocalFile_uploadDataKh5;
                                        safeSetState(() {});

                                        var chatMessagesRecordReference =
                                            ChatMessagesRecord.createDoc(
                                                widget.chatRoomDocRef!);
                                        await chatMessagesRecordReference.set({
                                          ...createChatMessagesRecordData(
                                            messageBy: FFAppState().userDocRef,
                                            messageByEmployeeId: FFAppState()
                                                .userProfileData
                                                .employeeId,
                                            messageType: 'image',
                                            messageByDisplayUrl: FFAppState()
                                                .userProfileData
                                                .imgProfile,
                                            messageByName:
                                                FFAppState().profileFullName,
                                            messageImageBlurHash:
                                                valueOrDefault<String>(
                                              _model.imageUploadTemp?.blurHash,
                                              'LKOp[Mof~qof?bfQRjfQ%MfQIUfQ',
                                            ),
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'message_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                        _model.createImageMessageDoc1 =
                                            ChatMessagesRecord
                                                .getDocumentFromData({
                                          ...createChatMessagesRecordData(
                                            messageBy: FFAppState().userDocRef,
                                            messageByEmployeeId: FFAppState()
                                                .userProfileData
                                                .employeeId,
                                            messageType: 'image',
                                            messageByDisplayUrl: FFAppState()
                                                .userProfileData
                                                .imgProfile,
                                            messageByName:
                                                FFAppState().profileFullName,
                                            messageImageBlurHash:
                                                valueOrDefault<String>(
                                              _model.imageUploadTemp?.blurHash,
                                              'LKOp[Mof~qof?bfQRjfQ%MfQIUfQ',
                                            ),
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'message_time': DateTime.now(),
                                            },
                                          ),
                                        }, chatMessagesRecordReference);
                                        _shouldSetState = true;
                                        safeSetState(() {
                                          _model.isDataUploading_uploadDataKh5 =
                                              false;
                                          _model.uploadedLocalFile_uploadDataKh5 =
                                              FFUploadedFile(
                                                  bytes: Uint8List.fromList([]),
                                                  originalFilename: '');
                                        });

                                        _model.uploadImageToStorage =
                                            await actions
                                                .uploadFileFirebaseStorage(
                                          'SawadChatImg',
                                          _model.imageUploadTemp,
                                        );
                                        _shouldSetState = true;

                                        await _model
                                            .createImageMessageDoc1!.reference
                                            .update(
                                                createChatMessagesRecordData(
                                          messageImageUrl:
                                              functions.stringToImgPath(
                                                  _model.uploadImageToStorage),
                                        ));

                                        await singleChatRoomPageSawadChatRoomRecord
                                            .reference
                                            .update({
                                          ...createSawadChatRoomRecordData(
                                            lastMessageText:
                                                '${FFAppState().profileFullName} ส่งรูปภาพ',
                                            lastMessageTime: _model
                                                .createImageMessageDoc1
                                                ?.messageTime,
                                            lastMessageBy: _model
                                                .createImageMessageDoc1
                                                ?.messageBy,
                                            lastMessageByEmployeeId: _model
                                                .createImageMessageDoc1
                                                ?.messageByEmployeeId,
                                            lastMessageType: _model
                                                .createImageMessageDoc1
                                                ?.messageType,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'last_seen_users_ref':
                                                  functions.generateUserRefList(
                                                      FFAppState().userDocRef),
                                            },
                                          ),
                                        });
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
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      size: 26.0,
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

                                        var chatMessagesRecordReference =
                                            ChatMessagesRecord.createDoc(
                                                widget.chatRoomDocRef!);
                                        await chatMessagesRecordReference.set({
                                          ...createChatMessagesRecordData(
                                            messageBy: FFAppState().userDocRef,
                                            messageByEmployeeId: FFAppState()
                                                .userProfileData
                                                .employeeId,
                                            messageText:
                                                _model.chatMessagesTemp,
                                            messageType: 'text',
                                            messageByDisplayUrl: FFAppState()
                                                .userProfileData
                                                .imgProfile,
                                            messageByName:
                                                FFAppState().profileFullName,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'message_time':
                                                  FieldValue.serverTimestamp(),
                                            },
                                          ),
                                        });
                                        _model.createMessageDoc2 =
                                            ChatMessagesRecord
                                                .getDocumentFromData({
                                          ...createChatMessagesRecordData(
                                            messageBy: FFAppState().userDocRef,
                                            messageByEmployeeId: FFAppState()
                                                .userProfileData
                                                .employeeId,
                                            messageText:
                                                _model.chatMessagesTemp,
                                            messageType: 'text',
                                            messageByDisplayUrl: FFAppState()
                                                .userProfileData
                                                .imgProfile,
                                            messageByName:
                                                FFAppState().profileFullName,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'message_time': DateTime.now(),
                                            },
                                          ),
                                        }, chatMessagesRecordReference);
                                        _shouldSetState = true;

                                        await singleChatRoomPageSawadChatRoomRecord
                                            .reference
                                            .update({
                                          ...createSawadChatRoomRecordData(
                                            lastMessageText: _model
                                                .createMessageDoc2?.messageText,
                                            lastMessageTime: _model
                                                .createMessageDoc2?.messageTime,
                                            lastMessageBy: _model
                                                .createMessageDoc2?.messageBy,
                                            lastMessageByEmployeeId: _model
                                                .createMessageDoc2
                                                ?.messageByEmployeeId,
                                            lastMessageType: _model
                                                .createMessageDoc2?.messageType,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'last_seen_users_ref':
                                                  functions.generateUserRefList(
                                                      FFAppState().userDocRef),
                                            },
                                          ),
                                        });
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
