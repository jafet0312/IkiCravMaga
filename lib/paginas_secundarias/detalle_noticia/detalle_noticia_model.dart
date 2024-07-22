import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_noticia_widget.dart' show DetalleNoticiaWidget;
import 'package:flutter/material.dart';

class DetalleNoticiaModel extends FlutterFlowModel<DetalleNoticiaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
