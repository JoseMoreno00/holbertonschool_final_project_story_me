import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/descargas_widget.dart' show DescargasWidget;
import 'package:flutter/material.dart';

class DescargasModel extends FlutterFlowModel<DescargasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
