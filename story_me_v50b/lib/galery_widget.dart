import 'package:flutter/foundation.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:storymev50b2/story_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/galery_model.dart';
export 'app/galery_model.dart';

class GaleryWidget extends StatefulWidget {
  const GaleryWidget({super.key});

  @override
  State<GaleryWidget> createState() => _GaleryWidgetState();
}

class _GaleryWidgetState extends State<GaleryWidget> {
  late GaleryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GaleryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFE1D5B6),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 414,
                    height: 208,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/logo.png',
                                width: 175,
                                height: 123,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: Text(
                            'StoryMe',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DARKLANDS',
                                  fontSize: 44,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.5),
                  child: Container(
                    width: double.infinity,
                    height: 400,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: CarouselSlider(
                        items: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (kDebugMode) {
                                    print('Image pressed ...');
                                  }
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const StoryWidget(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 200,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/3cerd.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40),
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Los Tres Chanchitos',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Eczar',
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 185,
                                height: 100,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: const Text(
                                  'Tres hermanos cerdos que estudian ingeniería civil',
                                  style: TextStyle(
                                    fontFamily: 'Eczar',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print('Button pressed ...');
                                  }
                                },
                                text: '',
                                options: FFButtonOptions(
                                  width: 200,
                                  height: 300,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                              ),
                              Text(
                                'Harry Potter',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Eczar',
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print('Button pressed ...');
                                  }
                                },
                                text: '',
                                options: FFButtonOptions(
                                  width: 200,
                                  height: 300,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                              ),
                              Text(
                                'Las aventuras de Cappe',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print('Button pressed ...');
                                  }
                                },
                                text: '',
                                options: FFButtonOptions(
                                  width: 200,
                                  height: 300,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                  ),
                                ),
                              ),
                              Text(
                                'Perrandalf',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Eczar',
                                    ),
                              ),
                            ],
                          ),
                        ],
                        carouselController: _model.carouselController ??=
                            CarouselController(),
                        options: CarouselOptions(
                          initialPage: 1,
                          viewportFraction: 0.5,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index, _) =>
                              _model.carouselCurrentIndex = index,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.98, -0.42),
                  child: Text(
                    'Libros',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Eczar',
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () {
                          if (kDebugMode) {
                            print('atras pressed ...');
                          }
                        },
                        text: '',
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          width: 97.5,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Eczar',
                                    color: Colors.black,
                                  ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          if (kDebugMode) {
                            print('Button pressed ...');
                          }
                        },
                        text: '',
                        icon: const Icon(
                          Icons.home,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          width: 97.5,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Eczar',
                                    color: Colors.black,
                                  ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          if (kDebugMode) {
                            print('descargas pressed ...');
                          }
                        },
                        text: '',
                        icon: const Icon(
                          Icons.download_sharp,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          width: 97.5,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Eczar',
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          if (kDebugMode) {
                            print('menu pressed ...');
                          }
                        },
                        text: '',
                        icon: const Icon(
                          Icons.menu_rounded,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          width: 97.5,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Eczar',
                                    color: Colors.black,
                                  ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
