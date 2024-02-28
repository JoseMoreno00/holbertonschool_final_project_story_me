import 'package:flutterflow_ui/flutterflow_ui.dart';
<<<<<<< HEAD:story_me_v50b/lib/app/player_model.dart
import '/player_widget.dart' show PlayerWidget;
=======
import 'package:storymev50b2/screens/styles_widget.dart' show StylesWidget;
>>>>>>> origin/Martin:story_me_v50b/lib/app_models/styles_model.dart
import 'package:flutter/material.dart';

class StylesModel extends FlutterFlowModel<StylesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

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
