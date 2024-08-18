import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_usuario_widget.dart' show PerfilUsuarioWidget;
import 'package:flutter/material.dart';

class PerfilUsuarioModel extends FlutterFlowModel<PerfilUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNumeroT widget.
  FocusNode? txtNumeroTFocusNode;
  TextEditingController? txtNumeroTTextController;
  String? Function(BuildContext, String?)? txtNumeroTTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNumeroTFocusNode?.dispose();
    txtNumeroTTextController?.dispose();
  }
}
