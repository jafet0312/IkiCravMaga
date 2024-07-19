import '/flutter_flow/flutter_flow_util.dart';
import 'sugerencias_widget.dart' show SugerenciasWidget;
import 'package:flutter/material.dart';

class SugerenciasModel extends FlutterFlowModel<SugerenciasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
    txtfResenaFocusNode?.dispose();
    txtfResenaTextController?.dispose();
  }
}
