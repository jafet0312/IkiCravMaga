import '/flutter_flow/flutter_flow_util.dart';
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
  // State field(s) for txtfContrasenia widget.
  FocusNode? txtfContraseniaFocusNode;
  TextEditingController? txtfContraseniaTextController;
  String? Function(BuildContext, String?)?
      txtfContraseniaTextControllerValidator;
  // State field(s) for txtfConfirmacionContrasenia widget.
  FocusNode? txtfConfirmacionContraseniaFocusNode;
  TextEditingController? txtfConfirmacionContraseniaTextController;
  String? Function(BuildContext, String?)?
      txtfConfirmacionContraseniaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtfCorreoFocusNode?.dispose();
    txtfCorreoTextController?.dispose();

    txtfNombreFocusNode?.dispose();
    txtfNombreTextController?.dispose();

    txtfTelefonoFocusNode?.dispose();
    txtfTelefonoTextController?.dispose();

    txtfContraseniaFocusNode?.dispose();
    txtfContraseniaTextController?.dispose();

    txtfConfirmacionContraseniaFocusNode?.dispose();
    txtfConfirmacionContraseniaTextController?.dispose();
  }
}
