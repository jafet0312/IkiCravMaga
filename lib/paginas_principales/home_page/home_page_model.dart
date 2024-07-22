import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
  void dispose() {
    unfocusNode.dispose();
  }
}
