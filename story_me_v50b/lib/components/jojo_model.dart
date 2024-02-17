import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'jojo_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class JojoModel extends FlutterFlowModel<JojoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for barrabusqueda widget.
  FocusNode? barrabusquedaFocusNode;
  TextEditingController? barrabusquedaController;
  String? Function(BuildContext, String?)? barrabusquedaControllerValidator;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    barrabusquedaFocusNode?.dispose();
    barrabusquedaController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
