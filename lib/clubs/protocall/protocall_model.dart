import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'protocall_widget.dart' show ProtocallWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProtocallModel extends FlutterFlowModel<ProtocallWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for clubname widget.
  FocusNode? clubnameFocusNode;
  TextEditingController? clubnameTextController;
  String? Function(BuildContext, String?)? clubnameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    clubnameFocusNode?.dispose();
    clubnameTextController?.dispose();
  }
}
