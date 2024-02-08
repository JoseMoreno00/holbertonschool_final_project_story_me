import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'jojo_widget.dart' show JojoWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {}

  void dispose() {
    barrabusquedaFocusNode?.dispose();
    barrabusquedaController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
