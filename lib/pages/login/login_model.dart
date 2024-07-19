import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtcontrasena widget.
  FocusNode? txtcontrasenaFocusNode;
  TextEditingController? txtcontrasenaTextController;
  String? Function(BuildContext, String?)? txtcontrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtcontrasenaFocusNode?.dispose();
    txtcontrasenaTextController?.dispose();
  }
}
