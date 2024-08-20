import '/flutter_flow/flutter_flow_util.dart';
import 'sugerencias_cliente_widget.dart' show SugerenciasClienteWidget;
import 'package:flutter/material.dart';

class SugerenciasClienteModel
    extends FlutterFlowModel<SugerenciasClienteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtfResena widget.
  FocusNode? txtfResenaFocusNode;
  TextEditingController? txtfResenaTextController;
  String? Function(BuildContext, String?)? txtfResenaTextControllerValidator;
  // State field(s) for rbEstrellas widget.
  double? rbEstrellasValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtfResenaFocusNode?.dispose();
    txtfResenaTextController?.dispose();
  }
}
