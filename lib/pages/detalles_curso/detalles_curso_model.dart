import '/flutter_flow/flutter_flow_util.dart';
import 'detalles_curso_widget.dart' show DetallesCursoWidget;
import 'package:flutter/material.dart';

class DetallesCursoModel extends FlutterFlowModel<DetallesCursoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
