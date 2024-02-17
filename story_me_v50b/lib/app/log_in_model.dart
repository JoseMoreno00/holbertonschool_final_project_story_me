import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Contrasea widget.
  FocusNode? contraseaFocusNode;
  TextEditingController? contraseaController;
  late bool contraseaVisibility;
  String? Function(BuildContext, String?)? contraseaControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    contraseaVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFocusNode?.dispose();
    emailController?.dispose();

    contraseaFocusNode?.dispose();
    contraseaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
