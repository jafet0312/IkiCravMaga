import '/flutter_flow/flutter_flow_util.dart';
import 'bs_editar_usuario_widget.dart' show BsEditarUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BsEditarUsuarioModel extends FlutterFlowModel<BsEditarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtfNombre widget.
  FocusNode? txtfNombreFocusNode;
  TextEditingController? txtfNombreTextController;
  String? Function(BuildContext, String?)? txtfNombreTextControllerValidator;
  String? _txtfNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3qozbqyd' /* Campo requerido */,
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
        'jxp98tdi' /* Campo requerido */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtfNombreTextControllerValidator = _txtfNombreTextControllerValidator;
    txtfTelefonoTextControllerValidator = _txtfTelefonoTextControllerValidator;
  }

  @override
  void dispose() {
    txtfNombreFocusNode?.dispose();
    txtfNombreTextController?.dispose();

    txtfTelefonoFocusNode?.dispose();
    txtfTelefonoTextController?.dispose();
  }
}
