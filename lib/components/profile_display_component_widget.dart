import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_display_component_model.dart';
export 'profile_display_component_model.dart';

class ProfileDisplayComponentWidget extends StatefulWidget {
  const ProfileDisplayComponentWidget({
    super.key,
    String? branchCode,
  }) : this.branchCode = branchCode ?? 'Vน';

  final String branchCode;

  @override
  State<ProfileDisplayComponentWidget> createState() =>
      _ProfileDisplayComponentWidgetState();
}

class _ProfileDisplayComponentWidgetState
    extends State<ProfileDisplayComponentWidget> {
  late ProfileDisplayComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileDisplayComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.0,
      height: 55.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.circle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 2.0,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          widget.branchCode,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).info,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ),
    );
  }
}
