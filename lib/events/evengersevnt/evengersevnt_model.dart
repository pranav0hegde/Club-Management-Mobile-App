import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'evengersevnt_widget.dart' show EvengersevntWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EvengersevntModel extends FlutterFlowModel<EvengersevntWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for avengers widget.
  FocusNode? avengersFocusNode;
  TextEditingController? avengersTextController;
  String? Function(BuildContext, String?)? avengersTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    avengersFocusNode?.dispose();
    avengersTextController?.dispose();
  }
}
