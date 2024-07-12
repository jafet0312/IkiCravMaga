import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtfCorreo widget.
  FocusNode? txtfCorreoFocusNode;
  TextEditingController? txtfCorreoTextController;
  String? Function(BuildContext, String?)? txtfCorreoTextControllerValidator;
  // State field(s) for txtfContrasenia widget.
  FocusNode? txtfContraseniaFocusNode;
  TextEditingController? txtfContraseniaTextController;
  String? Function(BuildContext, String?)?
      txtfContraseniaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtfCorreoFocusNode?.dispose();
    txtfCorreoTextController?.dispose();

    txtfContraseniaFocusNode?.dispose();
    txtfContraseniaTextController?.dispose();
  }
}
