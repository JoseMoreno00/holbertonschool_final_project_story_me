import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';

class PlayerModel extends FlutterFlowModel<PlayerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ComponentLateralMenu component.
  late ComponentLateralMenuModel componentLateralMenuModel;
  // Model for ComponentLogo component.
  late ComponentLogoModel componentLogoModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    componentLateralMenuModel =
        createModel(context, () => ComponentLateralMenuModel());
    componentLogoModel = createModel(context, () => ComponentLogoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    componentLateralMenuModel.dispose();
    componentLogoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
