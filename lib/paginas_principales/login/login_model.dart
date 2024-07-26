import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'px48eeg1' /* Ingrese un correo electrónico */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'okl1ueu2' /* Ingrese un correo válido */,
      );
    }
    return null;
  }

  // State field(s) for txtContrasenia widget.
  FocusNode? txtContraseniaFocusNode;
  TextEditingController? txtContraseniaTextController;
  late bool txtContraseniaVisibility;
  String? Function(BuildContext, String?)?
      txtContraseniaTextControllerValidator;
  String? _txtContraseniaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1bqwgloh' /* Ingrese una contraseña */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '1spuml9b' /* La contraseña tiene mínimo 6 c... */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - inicioSesion] action in contBtnInicioSesion widget.
  bool? inicioSesionResultado;

  @override
  void initState(BuildContext context) {
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtContraseniaVisibility = false;
    txtContraseniaTextControllerValidator =
        _txtContraseniaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContraseniaFocusNode?.dispose();
    txtContraseniaTextController?.dispose();
  }
}
