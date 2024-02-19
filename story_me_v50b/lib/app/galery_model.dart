import '/components/jojo_widget.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import '/galery_widget.dart' show GaleryWidget;
import 'package:flutter/material.dart';

class GaleryModel extends FlutterFlowModel<GaleryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for jojo component.
  late JojoModel jojoModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    jojoModel = createModel(context, () => JojoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    jojoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
