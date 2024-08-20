import '/flutter_flow/flutter_flow_util.dart';
import 'login_app_widget.dart' show LoginAppWidget;
import 'package:flutter/material.dart';

class LoginAppModel extends FlutterFlowModel<LoginAppWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtCorreoElectronico widget.
  FocusNode? txtCorreoElectronicoFocusNode;
  TextEditingController? txtCorreoElectronicoTextController;
  String? Function(BuildContext, String?)?
      txtCorreoElectronicoTextControllerValidator;
  String? _txtCorreoElectronicoTextControllerValidator(
      BuildContext context, String? val) {
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

  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaTextController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaTextControllerValidator;
  String? _txtContrasenaTextControllerValidator(
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
    txtCorreoElectronicoTextControllerValidator =
        _txtCorreoElectronicoTextControllerValidator;
    txtContrasenaVisibility = false;
    txtContrasenaTextControllerValidator =
        _txtContrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    txtCorreoElectronicoFocusNode?.dispose();
    txtCorreoElectronicoTextController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaTextController?.dispose();
  }
}
