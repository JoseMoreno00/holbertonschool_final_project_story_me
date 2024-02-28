import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/screens/register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Usuario widget.
  FocusNode? usuarioFocusNode;
  TextEditingController? usuarioController;
  String? Function(BuildContext, String?)? usuarioControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Contrasea widget.
  FocusNode? contraseaFocusNode;
  TextEditingController? contraseaController;
  late bool contraseaVisibility;
  String? Function(BuildContext, String?)? contraseaControllerValidator;
  // State field(s) for ConfirmarContrasea widget.
  FocusNode? confirmarContraseaFocusNode;
  TextEditingController? confirmarContraseaController;
  late bool confirmarContraseaVisibility;
  String? Function(BuildContext, String?)?
      confirmarContraseaControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    contraseaVisibility = false;
    confirmarContraseaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usuarioFocusNode?.dispose();
    usuarioController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    contraseaFocusNode?.dispose();
    contraseaController?.dispose();

    confirmarContraseaFocusNode?.dispose();
    confirmarContraseaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
