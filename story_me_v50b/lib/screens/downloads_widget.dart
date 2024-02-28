<<<<<<< HEAD:story_me_v50b/lib/player_widget.dart
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:storymev50b2/language_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'log_in_widget.dart';
import 'home_widget.dart';
import 'app/player_model.dart';
export 'app/player_model.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});
=======
import 'package:storymev50b2/imports.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class DownloadsWidget extends StatefulWidget {
  const DownloadsWidget({super.key});
>>>>>>> origin/Martin:story_me_v50b/lib/screens/downloads_widget.dart

  @override
  State<DownloadsWidget> createState() => _DownloadsWidgetState();
}

class _DownloadsWidgetState extends State<DownloadsWidget>
    with TickerProviderStateMixin {
  late DownloadsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0, 30),
          end: const Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 300.ms,
          begin: const Offset(0, 30),
          end: const Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
<<<<<<< HEAD:story_me_v50b/lib/player_widget.dart
    _model = createModel(context, () => PlayerModel());
    readFile();
=======
    _model = createModel(context, () => DownloadsModel());
>>>>>>> origin/Martin:story_me_v50b/lib/screens/downloads_widget.dart
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  String fileContent = "";
  List<String> listi = [];
  var idx = 0;
  Future<void> readFile() async {
    final String content =
        await rootBundle.loadString('assets/books/3_little_pigs/es/book.txt');
    setState(() {
      fileContent = content;
    });
    
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
        drawer: SizedBox(
          width: 200,
          child: Drawer(
            elevation: 16,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xFFF8EED7),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Poro:3',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 20,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                    child: Divider(
                      thickness: 1,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeWidget()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Icon(
                                Icons.home,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'Inicio',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DownloadsWidget()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Icon(
                                Icons.download_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'Descargas',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LanguageWidget()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Icon(
                                Icons.language_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'Idioma',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LogInWidget()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Icon(
                                Icons.logout_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'Cerrar Sesión',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        // ignore: deprecated_member_use
                        launch(
                            'https://github.com/JoseMoreno00/holbertonschool_final_project_story_me');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Icon(
                                Icons.people_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 26,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: Text(
                                'Sobre Nosotros',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                    ),
                              ),
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
        appBar: AppBar(
          backgroundColor: const Color(0xFFFC772F),
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: true,
          elevation: 4,
        ),
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 414,
                      height: 142,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
<<<<<<< HEAD:story_me_v50b/lib/player_widget.dart
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 175,
                              height: 136,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'StoryMe',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'DARKLANDS',
                                  fontSize: 36,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                    // EMPIEZO A TRABAJAR DESDE AQUI EN EL REPRODUCTOR!
                    Align(
                      alignment: const AlignmentDirectional(-0.99, -0.54),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                        child: Container(
                          width: double.infinity,
                          height: 280,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            border: Border.all(
                              width: 2,
                            ),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 500,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://picsum.photos/seed/16/600',
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://picsum.photos/seed/860/600',
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://picsum.photos/seed/677/600',
                                      width: 300,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.93, 0.21),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            border: Border.all(
                              width: 2,
                            ),
                          ),
                          child: Text(
                            fileContent,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Ezcar',
                                  fontSize: 14,
                                ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation3']!),
                      ),
                    ),
                  ],
                ),
                // TERMINO LA PARTE DEL REPRODUCTOR AQUI DE MOMENTO!
                Row(
=======
                    ),
                  ],
                ),
                Column(
>>>>>>> origin/Martin:story_me_v50b/lib/screens/downloads_widget.dart
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
                Align(
                  alignment: const AlignmentDirectional(0, 0.6),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                    child: Container(
                      width: 396,
                      height: 455,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment:
                                    const AlignmentDirectional(-0.9, -0.54),
                                child: Text(
                                  'Libros Descargados',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        fontSize: 24,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0, -0.26),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
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
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.2,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(24, 0, 24, 0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.2,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(24, 0, 24, 0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.2,
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(24, 0, 24, 0),
                                          iconPadding:
                                              const EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.2,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(24, 0, 24, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.2,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(24, 0, 24, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.2,
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(24, 0, 24, 0),
                                        iconPadding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                            ],
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
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
