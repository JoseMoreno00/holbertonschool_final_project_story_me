import 'package:flutter/foundation.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:storymev50b2/app/descargas_model.dart';
export 'package:storymev50b2/app/descargas_model.dart';

class DescargasWidget extends StatefulWidget {
  const DescargasWidget({super.key});

  @override
  State<DescargasWidget> createState() => _DescargasWidgetState();
}

class _DescargasWidgetState extends State<DescargasWidget> {
  late DescargasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescargasModel());
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
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 175,
                            height: 139,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'StoryMe',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DARKLANDS',
                        fontSize: 35,
                        useGoogleFonts: false,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.6),
                  child: Container(
                    width: 396,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('yisus pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: 110,
                              height: MediaQuery.sizeOf(context).height * 0.2,
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('elcofre pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: 110,
                              height: MediaQuery.sizeOf(context).height * 0.2,
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              if (kDebugMode) {
                                print('losangeles pressed ...');
                              }
                            },
                            text: '',
                            options: FFButtonOptions(
                              width: 110,
                              height: MediaQuery.sizeOf(context).height * 0.2,
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.9, -0.54),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Text(
                      'Libros Descargados',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Eczar',
                        fontSize: 24,
                      ),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                Align(
                  alignment: const AlignmentDirectional(0, -0.26),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('treschanchitos pressed ...');
                            }
                          },
                          text: '',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('caperucita pressed ...');
                            }
                          },
                          text: '',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('perrandalf pressed ...');
                            }
                          },
                          text: '',
                          options: FFButtonOptions(
                            width: 110,
                            height: MediaQuery.sizeOf(context).height * 0.2,
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
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
