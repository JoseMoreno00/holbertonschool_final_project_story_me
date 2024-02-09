import '/components/jojo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'gallery.dart' show GaleryWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GaleryModel extends FlutterFlowModel<GaleryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for jojo component.
  late JojoModel jojoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    jojoModel = createModel(context, () => JojoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    jojoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
