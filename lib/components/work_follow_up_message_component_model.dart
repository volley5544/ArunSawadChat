import '/components/profile_display_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'work_follow_up_message_component_widget.dart'
    show WorkFollowUpMessageComponentWidget;
import 'package:flutter/material.dart';

class WorkFollowUpMessageComponentModel
    extends FlutterFlowModel<WorkFollowUpMessageComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - appMyListViewControllerSet] action in WorkFollowUpMessageComponent widget.
  bool? returnGetController;
  // Model for ProfileDisplayComponent component.
  late ProfileDisplayComponentModel profileDisplayComponentModel;

  @override
  void initState(BuildContext context) {
    profileDisplayComponentModel =
        createModel(context, () => ProfileDisplayComponentModel());
  }

  @override
  void dispose() {
    profileDisplayComponentModel.dispose();
  }
}
