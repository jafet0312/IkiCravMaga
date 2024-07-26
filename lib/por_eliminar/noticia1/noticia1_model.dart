import '/flutter_flow/flutter_flow_util.dart';
import 'noticia1_widget.dart' show Noticia1Widget;
import 'package:flutter/material.dart';

class Noticia1Model extends FlutterFlowModel<Noticia1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
