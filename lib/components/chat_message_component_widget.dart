import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'chat_message_component_model.dart';
export 'chat_message_component_model.dart';

class ChatMessageComponentWidget extends StatefulWidget {
  const ChatMessageComponentWidget({
    super.key,
    required this.updateThisChatIsVisibleList,
    required this.thisChatIsVisibleList,
    required this.index,
    required this.messageDocData,
    required this.isSendMessageSuccess,
  });

  final Future Function(bool boolValue)? updateThisChatIsVisibleList;
  final List<bool>? thisChatIsVisibleList;
  final int? index;
  final ChatMessagesRecord? messageDocData;
  final bool? isSendMessageSuccess;

  @override
  State<ChatMessageComponentWidget> createState() =>
      _ChatMessageComponentWidgetState();
}

class _ChatMessageComponentWidgetState extends State<ChatMessageComponentWidget>
    with TickerProviderStateMixin {
  late ChatMessageComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatMessageComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.returnGetController = await actions.appMyListViewControllerSet(
        context,
      );
    });

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (widget.messageDocData?.messageBy != FFAppState().userDocRef)
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        if (widget.messageDocData?.messageType != 'setting') {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  if (widget.messageDocData?.messageByName !=
                                      'system') {
                                    return Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
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
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: OctoImage(
                                                  placeholderBuilder: (_) =>
                                                      SizedBox.expand(
                                                    child: Image(
                                                      image: BlurHashImage(widget
                                                              .messageDocData!
                                                              .hasMessageByDisplayBlurHash()
                                                          ? widget
                                                              .messageDocData!
                                                              .messageByDisplayBlurHash
                                                          : 'LKOp[Mof~qof?bfQRjfQ%MfQIUfQ'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    widget.messageDocData!
                                                        .messageByDisplayUrl,
                                                  ),
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: widget.messageDocData!
                                                    .messageByDisplayUrl,
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: widget.messageDocData!
                                              .messageByDisplayUrl,
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: OctoImage(
                                              placeholderBuilder: (_) =>
                                                  SizedBox.expand(
                                                child: Image(
                                                  image: BlurHashImage(widget
                                                          .messageDocData!
                                                          .hasMessageByDisplayBlurHash()
                                                      ? widget.messageDocData!
                                                          .messageByDisplayBlurHash
                                                      : 'LKOp[Mof~qof?bfQRjfQ%MfQIUfQ'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              image: CachedNetworkImageProvider(
                                                widget.messageDocData!
                                                    .messageByDisplayUrl,
                                              ),
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
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
                                              child:
                                                  FlutterFlowExpandedImageView(
                                                image: Image.asset(
                                                  'assets/images/untitled1112.png',
                                                  fit: BoxFit.contain,
                                                ),
                                                allowRotation: false,
                                                tag: 'imageTag2',
                                                useHeroAnimation: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag: 'imageTag2',
                                          transitionOnUserGestures: true,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: Image.asset(
                                              'assets/images/untitled1112.png',
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 4.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget.messageDocData?.messageByName !=
                                                'system'
                                            ? widget
                                                .messageDocData?.messageByName
                                            : 'น้องอรุณ',
                                        'name',
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
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 12.0,
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
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (widget.messageDocData?.messageType ==
                                          'text') {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if ((widget
                                                  .thisChatIsVisibleList!
                                                  .elementAtOrNull(
                                                      widget.index!))!) {
                                                await widget
                                                    .updateThisChatIsVisibleList
                                                    ?.call(
                                                  false,
                                                );
                                              } else {
                                                await widget
                                                    .updateThisChatIsVisibleList
                                                    ?.call(
                                                  true,
                                                );
                                              }
                                            },
                                            child: Container(
                                              constraints: BoxConstraints(
                                                minHeight: 40.0,
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.65,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(0xFF3F37FF),
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 8.0, 12.0, 8.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    widget.messageDocData
                                                        ?.messageText,
                                                    'message',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: 180.0,
                                            height: 180.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
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
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 4.0, 4.0, 4.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image: OctoImage(
                                                          placeholderBuilder:
                                                              (_) => SizedBox
                                                                  .expand(
                                                            child: Image(
                                                              image: BlurHashImage(widget
                                                                  .messageDocData!
                                                                  .messageImageBlurHash),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          image:
                                                              CachedNetworkImageProvider(
                                                            widget
                                                                .messageDocData!
                                                                .messageImageUrl,
                                                          ),
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: false,
                                                        tag: widget
                                                            .messageDocData!
                                                            .messageImageUrl,
                                                        useHeroAnimation: true,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Hero(
                                                  tag: widget.messageDocData!
                                                      .messageImageUrl,
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: OctoImage(
                                                      placeholderBuilder: (_) =>
                                                          SizedBox.expand(
                                                        child: Image(
                                                          image: BlurHashImage(widget
                                                              .messageDocData!
                                                              .messageImageBlurHash),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      image:
                                                          CachedNetworkImageProvider(
                                                        widget.messageDocData!
                                                            .messageImageUrl,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      dateTimeFormat(
                                        "Hm",
                                        widget.messageDocData!.messageTime!,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
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
                                            color: FlutterFlowTheme.of(context)
                                                .grayIcon,
                                            fontSize: 12.0,
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
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation2']!),
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else {
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget.messageDocData?.messageText,
                                  'message',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
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
        if (widget.messageDocData?.messageBy == FFAppState().userDocRef)
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Builder(
                        builder: (context) {
                          if (widget.messageDocData?.messageType == 'text') {
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if ((widget.thisChatIsVisibleList!
                                    .elementAtOrNull(widget.index!))!) {
                                  await widget.updateThisChatIsVisibleList
                                      ?.call(
                                    false,
                                  );
                                } else {
                                  await widget.updateThisChatIsVisibleList
                                      ?.call(
                                    true,
                                  );
                                }
                              },
                              child: Container(
                                constraints: BoxConstraints(
                                  minHeight: 40.0,
                                  maxWidth:
                                      MediaQuery.sizeOf(context).width * 0.65,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 8.0, 12.0, 8.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.messageDocData?.messageText,
                                      'message',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .black600,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if ((widget.thisChatIsVisibleList!
                                    .elementAtOrNull(widget.index!))!) {
                                  await widget.updateThisChatIsVisibleList
                                      ?.call(
                                    false,
                                  );
                                } else {
                                  await widget.updateThisChatIsVisibleList
                                      ?.call(
                                    true,
                                  );
                                }
                              },
                              child: Container(
                                width: 180.0,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
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
                                              placeholderBuilder: (_) =>
                                                  SizedBox.expand(
                                                child: Image(
                                                  image: BlurHashImage(widget
                                                      .messageDocData!
                                                      .messageImageBlurHash),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              image: CachedNetworkImageProvider(
                                                widget.messageDocData!
                                                    .messageImageUrl,
                                              ),
                                              fit: BoxFit.contain,
                                            ),
                                            allowRotation: false,
                                            tag: widget.messageDocData!
                                                .messageImageUrl,
                                            useHeroAnimation: true,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Hero(
                                      tag: widget
                                          .messageDocData!.messageImageUrl,
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: OctoImage(
                                          placeholderBuilder: (_) =>
                                              SizedBox.expand(
                                            child: Image(
                                              image: BlurHashImage(widget
                                                  .messageDocData!
                                                  .messageImageBlurHash),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          image: CachedNetworkImageProvider(
                                            widget.messageDocData!
                                                .messageImageUrl,
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
                            EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 0.0),
                        child: Text(
                          ('${widget.messageDocData?.messageTime?.toString()}' !=
                                      'null') &&
                                  ('${widget.messageDocData?.messageTime?.toString()}' !=
                                      '')
                              ? dateTimeFormat(
                                  "Hm",
                                  widget.messageDocData!.messageTime!,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                )
                              : '',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).grayIcon,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation3']!),
                      ),
                    ],
                  ),
                  if (!widget.isSendMessageSuccess! && (widget.index == 0))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
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
                  if ((widget.isSendMessageSuccess! && (widget.index == 0)) ||
                      (widget.index! > 0))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
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
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
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
  }
}
