import '/flutter_flow/flutter_flow_util.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtfCorreo widget.
  FocusNode? txtfCorreoFocusNode;
  TextEditingController? txtfCorreoTextController;
  String? Function(BuildContext, String?)? txtfCorreoTextControllerValidator;
  String? _txtfCorreoTextControllerValidator(
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

  // State field(s) for txtfNombre widget.
  FocusNode? txtfNombreFocusNode;
  TextEditingController? txtfNombreTextController;
  String? Function(BuildContext, String?)? txtfNombreTextControllerValidator;
  String? _txtfNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eoui1dlg' /* Ingrese su nombre */,
      );
    }

    return null;
  }

  // State field(s) for txtfTelefono widget.
  FocusNode? txtfTelefonoFocusNode;
  TextEditingController? txtfTelefonoTextController;
  final txtfTelefonoMask = MaskTextInputFormatter(mask: '####-####');
  String? Function(BuildContext, String?)? txtfTelefonoTextControllerValidator;
  String? _txtfTelefonoTextControllerValidator(
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
    txtfCorreoTextControllerValidator = _txtfCorreoTextControllerValidator;
    txtfNombreTextControllerValidator = _txtfNombreTextControllerValidator;
    txtfTelefonoTextControllerValidator = _txtfTelefonoTextControllerValidator;
    txtfContrasenaVisibility = false;
    txtfContrasenaTextControllerValidator =
        _txtfContrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    txtfCorreoFocusNode?.dispose();
    txtfCorreoTextController?.dispose();

    txtfNombreFocusNode?.dispose();
    txtfNombreTextController?.dispose();

    txtfTelefonoFocusNode?.dispose();
    txtfTelefonoTextController?.dispose();

    txtfContrasenaFocusNode?.dispose();
    txtfContrasenaTextController?.dispose();
  }
}
