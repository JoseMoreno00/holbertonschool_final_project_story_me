import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';

class PlayerModel extends FlutterFlowModel<PlayerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ComponentLateralMenu component.
  late ComponentLateralMenuModel componentLateralMenuModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    componentLateralMenuModel =
        createModel(context, () => ComponentLateralMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    componentLateralMenuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
