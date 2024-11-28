import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'regieventevengers_widget.dart' show RegieventevengersWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegieventevengersModel extends FlutterFlowModel<RegieventevengersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for evnt2name widget.
  FocusNode? evnt2nameFocusNode;
  TextEditingController? evnt2nameTextController;
  String? Function(BuildContext, String?)? evnt2nameTextControllerValidator;
  // State field(s) for e2usn widget.
  FocusNode? e2usnFocusNode;
  TextEditingController? e2usnTextController;
  String? Function(BuildContext, String?)? e2usnTextControllerValidator;
  // State field(s) for e2branch widget.
  String? e2branchValue;
  FormFieldController<String>? e2branchValueController;
  // State field(s) for branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  // State field(s) for e2phone widget.
  FocusNode? e2phoneFocusNode;
  TextEditingController? e2phoneTextController;
  String? Function(BuildContext, String?)? e2phoneTextControllerValidator;
  // State field(s) for e2email widget.
  FocusNode? e2emailFocusNode;
  TextEditingController? e2emailTextController;
  String? Function(BuildContext, String?)? e2emailTextControllerValidator;
  // State field(s) for e2sem widget.
  String? e2semValue;
  FormFieldController<String>? e2semValueController;
  // State field(s) for e2gender widget.
  FormFieldController<String>? e2genderValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    evnt2nameFocusNode?.dispose();
    evnt2nameTextController?.dispose();

    e2usnFocusNode?.dispose();
    e2usnTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    e2phoneFocusNode?.dispose();
    e2phoneTextController?.dispose();

    e2emailFocusNode?.dispose();
    e2emailTextController?.dispose();
  }

  /// Additional helper methods.
  String? get e2genderValue => e2genderValueController?.value;
}
