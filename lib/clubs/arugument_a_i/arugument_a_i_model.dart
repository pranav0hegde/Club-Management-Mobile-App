import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'arugument_a_i_widget.dart' show ArugumentAIWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ArugumentAIModel extends FlutterFlowModel<ArugumentAIWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for argumentai widget.
  FocusNode? argumentaiFocusNode;
  TextEditingController? argumentaiTextController;
  String? Function(BuildContext, String?)? argumentaiTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    argumentaiFocusNode?.dispose();
    argumentaiTextController?.dispose();
  }
}
