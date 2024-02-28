import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';

class StylesModel extends FlutterFlowModel<StylesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ComponentLateralMenu component.
  late ComponentLateralMenuModel componentLateralMenuModel;
  // Model for ComponentStyleStyles component.
  late ComponentStyleStylesModel componentStyleStylesModel;
  // Model for ComponentLanguagesStyle component.
  late ComponentLanguagesStyleModel componentLanguagesStyleModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    componentLateralMenuModel =
        createModel(context, () => ComponentLateralMenuModel());
    componentStyleStylesModel =
        createModel(context, () => ComponentStyleStylesModel());
    componentLanguagesStyleModel =
        createModel(context, () => ComponentLanguagesStyleModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    componentLateralMenuModel.dispose();
    componentStyleStylesModel.dispose();
    componentLanguagesStyleModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
