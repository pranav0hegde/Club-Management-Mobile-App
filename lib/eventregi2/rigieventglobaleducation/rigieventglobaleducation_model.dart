import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'rigieventglobaleducation_widget.dart'
    show RigieventglobaleducationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RigieventglobaleducationModel
    extends FlutterFlowModel<RigieventglobaleducationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for evnt-name widget.
  FocusNode? evntNameFocusNode;
  TextEditingController? evntNameTextController;
  String? Function(BuildContext, String?)? evntNameTextControllerValidator;
  // State field(s) for evnt_usn widget.
  FocusNode? evntUsnFocusNode;
  TextEditingController? evntUsnTextController;
  String? Function(BuildContext, String?)? evntUsnTextControllerValidator;
  // State field(s) for evnt_branch widget.
  String? evntBranchValue;
  FormFieldController<String>? evntBranchValueController;
  // State field(s) for branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  // State field(s) for even1phone widget.
  FocusNode? even1phoneFocusNode;
  TextEditingController? even1phoneTextController;
  String? Function(BuildContext, String?)? even1phoneTextControllerValidator;
  // State field(s) for event1mail widget.
  FocusNode? event1mailFocusNode;
  TextEditingController? event1mailTextController;
  String? Function(BuildContext, String?)? event1mailTextControllerValidator;
  // State field(s) for event1sem widget.
  String? event1semValue;
  FormFieldController<String>? event1semValueController;
  // State field(s) for event1gender widget.
  FormFieldController<String>? event1genderValueController;
  // State field(s) for pay2utr widget.
  FocusNode? pay2utrFocusNode;
  TextEditingController? pay2utrTextController;
  String? Function(BuildContext, String?)? pay2utrTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    evntNameFocusNode?.dispose();
    evntNameTextController?.dispose();

    evntUsnFocusNode?.dispose();
    evntUsnTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    even1phoneFocusNode?.dispose();
    even1phoneTextController?.dispose();

    event1mailFocusNode?.dispose();
    event1mailTextController?.dispose();

    pay2utrFocusNode?.dispose();
    pay2utrTextController?.dispose();
  }

  /// Additional helper methods.
  String? get event1genderValue => event1genderValueController?.value;
}
