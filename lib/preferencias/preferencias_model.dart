import '/flutter_flow/flutter_flow_util.dart';
import 'preferencias_widget.dart' show PreferenciasWidget;
import 'package:flutter/material.dart';

class PreferenciasModel extends FlutterFlowModel<PreferenciasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
