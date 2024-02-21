import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/galery_widget.dart' show GaleryWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GaleryModel extends FlutterFlowModel<GaleryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

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
