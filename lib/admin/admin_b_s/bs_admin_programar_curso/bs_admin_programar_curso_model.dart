import '/flutter_flow/flutter_flow_util.dart';
import 'bs_admin_programar_curso_widget.dart' show BsAdminProgramarCursoWidget;
import 'package:flutter/material.dart';

class BsAdminProgramarCursoModel
    extends FlutterFlowModel<BsAdminProgramarCursoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked;
  // State field(s) for txtFNombre widget.
  FocusNode? txtFNombreFocusNode;
  TextEditingController? txtFNombreTextController;
  String? Function(BuildContext, String?)? txtFNombreTextControllerValidator;
  // State field(s) for txtFPrecio widget.
  FocusNode? txtFPrecioFocusNode;
  TextEditingController? txtFPrecioTextController;
  String? Function(BuildContext, String?)? txtFPrecioTextControllerValidator;
  // State field(s) for txtFDescripcion widget.
  FocusNode? txtFDescripcionFocusNode;
  TextEditingController? txtFDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtFDescripcionTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtFNombreFocusNode?.dispose();
    txtFNombreTextController?.dispose();

    txtFPrecioFocusNode?.dispose();
    txtFPrecioTextController?.dispose();

    txtFDescripcionFocusNode?.dispose();
    txtFDescripcionTextController?.dispose();
  }
}
