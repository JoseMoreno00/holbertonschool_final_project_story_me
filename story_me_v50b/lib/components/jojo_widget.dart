import 'package:flutter/foundation.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'jojo_model.dart';
export 'jojo_model.dart';

class JojoWidget extends StatefulWidget {
  const JojoWidget({super.key});

  @override
  State<JojoWidget> createState() => _JojoWidgetState();
}

class _JojoWidgetState extends State<JojoWidget> {
  late JojoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JojoModel());

    _model.barrabusquedaController ??= TextEditingController();
    _model.barrabusquedaFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/344c4a87ad585f889b9d297a11212d96.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, -1),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/40a74bde94d30abf874882bc8c812fa0.png',
                width: 178.41,
                height: 185,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.01, -0.58),
            child: Text(
              'StoryMe',
              style: FlutterFlowTheme.of(context).displayMedium.override(
                fontFamily: 'DARKLANDS',
                useGoogleFonts: false,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.04, -0.31),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
              child: SizedBox(
                width: 300,
                child: TextFormField(
                  controller: _model.barrabusquedaController,
                  focusNode: _model.barrabusquedaFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    hintText: 'Buscar',
                    hintStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Eczar',
                      fontSize: 19,
                      fontWeight: FontWeight.w300,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF382924),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF382924),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xbacd382924),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xbacd382924),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF382924),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 35,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.justify,
                  validator: _model.barrabusquedaControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.89, -0.04),
            child: Text(
              'Libros',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Eczar',
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.82, 0.47),
            child: Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: CarouselSlider(
                  items: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('imagencaperucita pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width,
                              height: 220,
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Text(
                          'Caperucita Roja',
                          style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Eczar',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('imagentreschanchitos pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width,
                              height: 220,
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Text(
                          'Los Tres Chanchitos',
                          style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Eczar',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('imagenperrandalf pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width,
                              height: 220,
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Text(
                          'Perrandalf',
                          style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Eczar',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('imagencofrecito pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width,
                              height: 220,
                              padding:
                              const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Text(
                          'El cofrecito',
                          style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
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
                  text: 'Atrás',
                  options: FFButtonOptions(
                    width: 97.5,
                    height: 40,
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Eczar',
                      color: Colors.white,
                    ),
                    elevation: 3,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Button pressed ...');
                    }
                  },
                  text: 'Inicio',
                  options: FFButtonOptions(
                    width: 97.5,
                    height: 40,
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Eczar',
                      color: Colors.white,
                    ),
                    elevation: 3,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    if (kDebugMode) {
                      print('descargas pressed ...');
                    }
                  },
                  text: 'Descargas',
                  options: FFButtonOptions(
                    width: 97.5,
                    height: 40,
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Eczar',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    elevation: 3,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    if (kDebugMode) {
                      print('menu pressed ...');
                    }
                  },
                  text: 'Menú',
                  options: FFButtonOptions(
                    width: 97.5,
                    height: 40,
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Eczar',
                      color: Colors.white,
                    ),
                    elevation: 3,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
