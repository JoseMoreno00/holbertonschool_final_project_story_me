import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ComponentLateralMenu component.
  late ComponentLateralMenuModel componentLateralMenuModel;
  // Model for ComponentLogo component.
  late ComponentLogoModel componentLogoModel;
  // Model for ComponentCarruselHome component.
  late ComponentCarruselHomeModel componentCarruselHomeModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    componentLateralMenuModel =
        createModel(context, () => ComponentLateralMenuModel());
    componentLogoModel = createModel(context, () => ComponentLogoModel());
    componentCarruselHomeModel =
        createModel(context, () => ComponentCarruselHomeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    componentLateralMenuModel.dispose();
    componentLogoModel.dispose();
    componentCarruselHomeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
