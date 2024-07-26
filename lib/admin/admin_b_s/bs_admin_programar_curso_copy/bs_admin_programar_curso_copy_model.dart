import '/flutter_flow/flutter_flow_util.dart';
import 'bs_admin_programar_curso_copy_widget.dart'
    show BsAdminProgramarCursoCopyWidget;
import 'package:flutter/material.dart';

class BsAdminProgramarCursoCopyModel
    extends FlutterFlowModel<BsAdminProgramarCursoCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for txtf_Descripcion widget.
  FocusNode? txtfDescripcionFocusNode;
  TextEditingController? txtfDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtfDescripcionTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    txtfDescripcionFocusNode?.dispose();
    txtfDescripcionTextController?.dispose();
  }
}
