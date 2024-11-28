import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'protocalclubregi_widget.dart' show ProtocalclubregiWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProtocalclubregiModel extends FlutterFlowModel<ProtocalclubregiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for clubusrname widget.
  FocusNode? clubusrnameFocusNode;
  TextEditingController? clubusrnameTextController;
  String? Function(BuildContext, String?)? clubusrnameTextControllerValidator;
  // State field(s) for clubusn widget.
  FocusNode? clubusnFocusNode;
  TextEditingController? clubusnTextController;
  String? Function(BuildContext, String?)? clubusnTextControllerValidator;
  // State field(s) for clubbranch widget.
  String? clubbranchValue;
  FormFieldController<String>? clubbranchValueController;
  // State field(s) for branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  // State field(s) for clubnumber widget.
  FocusNode? clubnumberFocusNode;
  TextEditingController? clubnumberTextController;
  String? Function(BuildContext, String?)? clubnumberTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for clubsem widget.
  String? clubsemValue;
  FormFieldController<String>? clubsemValueController;
  // State field(s) for clubgender widget.
  FormFieldController<String>? clubgenderValueController;
  // State field(s) for clubpayutr widget.
  FocusNode? clubpayutrFocusNode;
  TextEditingController? clubpayutrTextController;
  String? Function(BuildContext, String?)? clubpayutrTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    clubusrnameFocusNode?.dispose();
    clubusrnameTextController?.dispose();

    clubusnFocusNode?.dispose();
    clubusnTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    clubnumberFocusNode?.dispose();
    clubnumberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();

    clubpayutrFocusNode?.dispose();
    clubpayutrTextController?.dispose();
  }

  /// Additional helper methods.
  String? get clubgenderValue => clubgenderValueController?.value;
}
