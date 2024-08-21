import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_cursos_widget.dart' show RegistrarCursosWidget;
import 'package:flutter/material.dart';

class RegistrarCursosModel extends FlutterFlowModel<RegistrarCursosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtfFecha widget.
  FocusNode? txtfFechaFocusNode;
  TextEditingController? txtfFechaTextController;
  String? Function(BuildContext, String?)? txtfFechaTextControllerValidator;
  String? _txtfFechaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '04xdzuzz' /* Field is required */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for txtFNombre widget.
  FocusNode? txtFNombreFocusNode;
  TextEditingController? txtFNombreTextController;
  String? Function(BuildContext, String?)? txtFNombreTextControllerValidator;
  String? _txtFNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fiogqn6y' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtFPrecio widget.
  FocusNode? txtFPrecioFocusNode;
  TextEditingController? txtFPrecioTextController;
  String? Function(BuildContext, String?)? txtFPrecioTextControllerValidator;
  String? _txtFPrecioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'noesu0sf' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for txtFDescripcion widget.
  FocusNode? txtFDescripcionFocusNode;
  TextEditingController? txtFDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtFDescripcionTextControllerValidator;
  String? _txtFDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wonpdz39' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Validate Form] action in contBtnICrear widget.
  bool? validacionFormularioCopy;

  @override
  void initState(BuildContext context) {
    txtfFechaTextControllerValidator = _txtfFechaTextControllerValidator;
    txtFNombreTextControllerValidator = _txtFNombreTextControllerValidator;
    txtFPrecioTextControllerValidator = _txtFPrecioTextControllerValidator;
    txtFDescripcionTextControllerValidator =
        _txtFDescripcionTextControllerValidator;
  }

  @override
  void dispose() {
    txtfFechaFocusNode?.dispose();
    txtfFechaTextController?.dispose();

    txtFNombreFocusNode?.dispose();
    txtFNombreTextController?.dispose();

    txtFPrecioFocusNode?.dispose();
    txtFPrecioTextController?.dispose();

    txtFDescripcionFocusNode?.dispose();
    txtFDescripcionTextController?.dispose();
  }
}
