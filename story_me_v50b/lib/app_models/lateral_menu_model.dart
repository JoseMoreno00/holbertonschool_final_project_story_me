import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/functions/lateral_menu_widget.dart'
    show LateralMenuWidget;
import 'package:flutter/material.dart';

class LateralMenuModel extends FlutterFlowModel<LateralMenuWidget> {
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
