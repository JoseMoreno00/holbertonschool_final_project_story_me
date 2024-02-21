import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/story_model.dart';
export 'app/story_model.dart';

class StoryWidget extends StatefulWidget {
  const StoryWidget({super.key});

  @override
  State<StoryWidget> createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  late StoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoryModel());
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
              gradient: LinearGradient(
                colors: [Color(0xFFE1D5B6), Color(0xFFB89E7D)],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: 414,
                  height: 142,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 133,
                              height: 97,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'StoryMe',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DARKLANDS',
                                  fontSize: 28,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(35, 80, 0, 0),
                        child: Text(
                          'Los Tres\nChanchitos',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/3cerd.jpg',
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1, -0.26),
                  child: Container(
                    width: 396,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('cyberpunk pressed ...');
                            }
                          },
                          text: 'Cyberpunk',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('anime pressed ...');
                            }
                          },
                          text: 'Anime',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('ochobit pressed ...');
                            }
                          },
                          text: '8-Bit',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.6),
                  child: Container(
                    width: 396,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('espaniol pressed ...');
                            }
                          },
                          text: 'Español',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('portugues pressed ...');
                            }
                          },
                          text: 'Portugués',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('ingles pressed ...');
                            }
                          },
                          text: 'Inglés',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.01, 0.84),
                  child: FFButtonWidget(
                    onPressed: () {
                      if (kDebugMode) {
                        print('play pressed ...');
                      }
                    },
                    text: '',
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Color(0xFF382924),
                      size: 50,
                    ),
                    options: FFButtonOptions(
                      width: 150,
                      padding: const EdgeInsets.all(14),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: const Color(0xFFFC772F),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 20,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.9, -0.47),
                  child: Text(
                    'Estilos',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Eczar',
                          fontSize: 24,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.89, 0.14),
                  child: Text(
                    'Idiomas',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Eczar',
                          fontSize: 24,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
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
                            print('inicio pressed ...');
                          }
                        },
                        text: 'Inicio',
                        options: FFButtonOptions(
                          width: 97.5,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
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
                            print('menu pressed ...');
                          }
                        },
                        text: 'Menú',
                        options: FFButtonOptions(
                          width: 97.5,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24, 0, 24, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
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
          ),
        ),
      ),
    );
  }
}
