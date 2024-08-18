import '/flutter_flow/flutter_flow_util.dart';
import 'info_widget.dart' show InfoWidget;
import 'package:flutter/material.dart';

class InfoModel extends FlutterFlowModel<InfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for pvInicio widget.
  PageController? pvInicioController;

  int get pvInicioCurrentIndex => pvInicioController != null &&
          pvInicioController!.hasClients &&
          pvInicioController!.page != null
      ? pvInicioController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
