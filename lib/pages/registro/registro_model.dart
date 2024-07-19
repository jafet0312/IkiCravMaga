import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtfCorreo widget.
  FocusNode? txtfCorreoFocusNode;
  TextEditingController? txtfCorreoTextController;
  String? Function(BuildContext, String?)? txtfCorreoTextControllerValidator;
  // State field(s) for txtfNombre widget.
  FocusNode? txtfNombreFocusNode;
  TextEditingController? txtfNombreTextController;
  String? Function(BuildContext, String?)? txtfNombreTextControllerValidator;
  // State field(s) for txtfTelefono widget.
  FocusNode? txtfTelefonoFocusNode;
  TextEditingController? txtfTelefonoTextController;
  String? Function(BuildContext, String?)? txtfTelefonoTextControllerValidator;
  // State field(s) for txtfContrasena widget.
  FocusNode? txtfContrasenaFocusNode;
  TextEditingController? txtfContrasenaTextController;
  late bool txtfContrasenaVisibility;
  String? Function(BuildContext, String?)?
      txtfContrasenaTextControllerValidator;
  // State field(s) for ddRole widget.
  String? ddRoleValue;
  FormFieldController<String>? ddRoleValueController;

  @override
  void initState(BuildContext context) {
    txtfContrasenaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
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
