import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_usuario_widget.dart' show PerfilUsuarioWidget;
import 'package:flutter/material.dart';

class PerfilUsuarioModel extends FlutterFlowModel<PerfilUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtfCorreo widget.
  FocusNode? txtfCorreoFocusNode;
  TextEditingController? txtfCorreoTextController;
  String? Function(BuildContext, String?)? txtfCorreoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtfCorreoFocusNode?.dispose();
    txtfCorreoTextController?.dispose();
  }
}
