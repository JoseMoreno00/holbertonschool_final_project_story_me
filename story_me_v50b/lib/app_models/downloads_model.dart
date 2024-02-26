import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/screens/downloads_widget.dart'
    show DownloadsWidget;
import 'package:flutter/material.dart';

class DownloadsModel extends FlutterFlowModel<DownloadsWidget> {
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
