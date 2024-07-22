import '/flutter_flow/flutter_flow_util.dart';
import 'noticias_widget.dart' show NoticiasWidget;
import 'package:flutter/material.dart';

class NoticiasModel extends FlutterFlowModel<NoticiasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
