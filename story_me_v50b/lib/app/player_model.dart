import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/player_widget.dart' show PlayerWidget;
import 'package:flutter/material.dart';

class PlayerModel extends FlutterFlowModel<PlayerWidget> {
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
