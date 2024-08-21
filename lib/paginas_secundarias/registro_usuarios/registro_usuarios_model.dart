import '/flutter_flow/flutter_flow_util.dart';
import 'registro_usuarios_widget.dart' show RegistroUsuariosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroUsuariosModel extends FlutterFlowModel<RegistroUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtfCorreoElectronico widget.
  FocusNode? txtfCorreoElectronicoFocusNode;
  TextEditingController? txtfCorreoElectronicoTextController;
  String? Function(BuildContext, String?)?
      txtfCorreoElectronicoTextControllerValidator;
  String? _txtfCorreoElectronicoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nkjm0di9' /* Ingrese un correo válido */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'd3lzeimp' /* Ingrese un correo válido */,
      );
    }
    return null;
  }

  // State field(s) for txtfNombreCompleto widget.
  FocusNode? txtfNombreCompletoFocusNode;
  TextEditingController? txtfNombreCompletoTextController;
  String? Function(BuildContext, String?)?
      txtfNombreCompletoTextControllerValidator;
  String? _txtfNombreCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eoui1dlg' /* Ingrese su nombre */,
      );
    }

    return null;
  }

  // State field(s) for txtfTelefonoU widget.
  FocusNode? txtfTelefonoUFocusNode;
  TextEditingController? txtfTelefonoUTextController;
  final txtfTelefonoUMask = MaskTextInputFormatter(mask: '####-####');
  String? Function(BuildContext, String?)? txtfTelefonoUTextControllerValidator;
  String? _txtfTelefonoUTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4cu2uwsd' /* Ingrese su número de teléfono */,
      );
    }

    if (val.length < 9) {
      return FFLocalizations.of(context).getText(
        'mr1b6b5o' /* Ingrese un teléfono válido */,
      );
    }

    return null;
  }

  // State field(s) for txtfContrasena widget.
  FocusNode? txtfContrasenaFocusNode;
  TextEditingController? txtfContrasenaTextController;
  late bool txtfContrasenaVisibility;
  String? Function(BuildContext, String?)?
      txtfContrasenaTextControllerValidator;
  String? _txtfContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'buoz0p8s' /* Ingrese una contraseña */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        '41gd9scj' /* Contraseña con mínimo 6 caract... */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - createClient] action in contRegistrar widget.
  bool? usuarioCreado;

  @override
  void initState(BuildContext context) {
    txtfCorreoElectronicoTextControllerValidator =
        _txtfCorreoElectronicoTextControllerValidator;
    txtfNombreCompletoTextControllerValidator =
        _txtfNombreCompletoTextControllerValidator;
    txtfTelefonoUTextControllerValidator =
        _txtfTelefonoUTextControllerValidator;
    txtfContrasenaVisibility = false;
    txtfContrasenaTextControllerValidator =
        _txtfContrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    txtfCorreoElectronicoFocusNode?.dispose();
    txtfCorreoElectronicoTextController?.dispose();

    txtfNombreCompletoFocusNode?.dispose();
    txtfNombreCompletoTextController?.dispose();

    txtfTelefonoUFocusNode?.dispose();
    txtfTelefonoUTextController?.dispose();

    txtfContrasenaFocusNode?.dispose();
    txtfContrasenaTextController?.dispose();
  }
}
