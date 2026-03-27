import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'test_component_model.dart';
export 'test_component_model.dart';

class TestComponentWidget extends StatefulWidget {
  const TestComponentWidget({
    super.key,
    required this.message,
    required this.index,
  });

  final String? message;
  final int? index;

  @override
  State<TestComponentWidget> createState() => _TestComponentWidgetState();
}

class _TestComponentWidgetState extends State<TestComponentWidget> {
  late TestComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.returnGetController = await actions.appMyListViewControllerSet(
        context,
      );
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
    return Material(
      color: Colors.transparent,
      child: ListTile(
        title: Text(
          widget.message!,
          style: FlutterFlowTheme.of(context).titleLarge.override(
                font: GoogleFonts.interTight(
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).titleLarge.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
              ),
        ),
        subtitle: Text(
          'Subtitle',
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
              ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
        tileColor: FlutterFlowTheme.of(context).secondaryBackground,
        dense: false,
        contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
