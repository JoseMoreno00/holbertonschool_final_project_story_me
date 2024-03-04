// ignore: unused_import

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget>
    with TickerProviderStateMixin {
  late PlayerModel _model;
  late FlutterTts flutterTts;

  get import => null;
//=============================================================================
// Text to speech implementation
//=============================================================================
  Future<void> playContent() async {
    var omg = idx - 1;
    await flutterTts.setLanguage('es-ES'); // Establece el idioma
    await flutterTts.setSpeechRate(0.5); // Establece la velocidad de lectura
    await flutterTts.speak(
        fileContent[omg]); // Lee el contenido de la lista en la posición idx
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
// ============================================================================
// Transition animations
// ============================================================================
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
    'containerOnPageLoadAnimation2': AnimationInfo(
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
    'rowOnPageLoadAnimation': AnimationInfo(
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
  };

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  // Remove the unused field '_pageController'
  // PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerModel());
    // ignore: unused_local_variable
    flutterTts = FlutterTts();
    cargarContenidoLibro();

    _getImageUrlsFromFirestore();
  }

  var idx = 1;
  //============================================================================
  // Load book content from Firebase Realtime Database
  //============================================================================
  List<String> fileContent = [];
  Future<void> cargarContenidoLibro() async {
    DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
    dynamic collection = databaseReference.child('books').child('es');
    DatabaseEvent snapshot = await collection.once() as DatabaseEvent;
    Map<dynamic, dynamic> values =
        snapshot.snapshot.value as Map<dynamic, dynamic>;
    String? contenido = values['3_little_pigstxt'];
    if (contenido == null) {
      return;
    }
    setState(() {
      fileContent = contenido.split('\\n');
    });
  }

//============================================================================
// Load images from Firestore
//============================================================================
  // Add this import statement

  List<String> imageUrls = [];
  Future<List<String>> _getImageUrlsFromFirestore() async {
    for (int i = 1; i <= 15; i++) {
      String imagePath =
          '3_little_pigs_PM/anime/($i)-3_little_pigs_PM-anime.jpg';
      String downloadUrl =
          await FirebaseStorage.instance.ref(imagePath).getDownloadURL();
      imageUrls.add(downloadUrl);
    }
    if (kDebugMode) {
      print(imageUrls);
    }
    return imageUrls;
  }

// ========================================================
// Controller change pages
// =========================================================
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFCFAEF),
        drawer: SizedBox(
          width: 200,
          child: Drawer(
            elevation: 16,
            child: wrapWithModel(
              model: _model.componentLateralMenuModel,
              updateCallback: () => setState(() {}),
              child: const ComponentLateralMenuWidget(),
            ),
          ),
        ),
// =========================================================
// AppBar
// =========================================================
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
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
              color: Color(0xFFFCFAEF),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.99, -0.54),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Stack(
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 1,
                              child: Stack(
                                children: [
                                  Image.network(
                                    imageUrls[idx - 1],
                                    fit: BoxFit.fill,
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-1, 1),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 0, 16),
                                      child: smooth_page_indicator
                                          .SmoothPageIndicator(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) async {
                                          if (_model.pageViewController !=
                                                  null &&
                                              _model.pageViewController!
                                                  .hasClients) {
                                            await _model.pageViewController!
                                                .animateToPage(
                                              i,
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                          }
                                        },
                                        effect: smooth_page_indicator
                                            .ExpandingDotsEffect(
                                          expansionFactor: 3,
                                          spacing: 8,
                                          radius: 16,
                                          dotWidth: 16,
                                          dotHeight: 8,
                                          dotColor: FlutterFlowTheme.of(context)
                                              .accent1,
                                          activeDotColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
// =========================================================
// Images player
// =========================================================
                            Align(
                              alignment: const AlignmentDirectional(1, 1),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(0, 1),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      1, 1),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0, 0, 10, 0),
                                                child: Switch.adaptive(
                                                  value: _model.switchValue ??=
                                                      false,
                                                  onChanged: (newValue) async {
                                                    setState(() => _model
                                                        .switchValue = true);
                                                  },
                                                  activeColor:
                                                      const Color(0xFF02B126),
                                                  activeTrackColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent1,
                                                  inactiveTrackColor:
                                                      const Color(0xFFE53935),
                                                  inactiveThumbColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
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
                          ],
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation1']!),
                    ),
// =========================================================
// Text player
// =========================================================
                    Align(
                      alignment: const AlignmentDirectional(-0.93, 0.21),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height * 0.22,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEDECEA),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            border: Border.all(
                              color: const Color.fromARGB(255, 250, 119, 47),
                              width: 1,
                            ),
                          ),
                          child: Text(
                              fileContent.isNotEmpty
                                  ? fileContent[idx - 1]
                                  : 'Loading ...',
                              // ignore: deprecated_member_use
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
// =========================================================
// Prev button
// =========================================================
                            Align(
                              alignment: const AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 50),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      if (idx > 1) {
                                        idx -= 1;
                                      }
                                    });
                                    if (kDebugMode) {
                                      print(idx);
                                    }
                                    await _model.pageViewController
                                        ?.previousPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                  },
                                  text: '',
                                  icon: const Icon(
                                    Icons.chevron_left_rounded,
                                    size: 35,
                                  ),
                                  options: FFButtonOptions(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.155,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.06,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFFC772F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
// =========================================================
// Pause button
// =========================================================
                            Align(
                              alignment: const AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 50),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    if (kDebugMode) {
                                      print('pause pressed ...');
                                    }
                                  },
                                  text: '',
                                  icon: const Icon(
                                    Icons.pause,
                                    size: 35,
                                  ),
                                  options: FFButtonOptions(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.155,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.06,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFFC772F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
// =========================================================
// Play button
// =========================================================
                            Align(
                              alignment: const AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 50),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    playContent();
                                    if (kDebugMode) {
                                      print('play pressed ...');
                                    }
                                  },
                                  text: '',
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    size: 35,
                                  ),
                                  options: FFButtonOptions(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.155,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.06,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFFC772F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                              ),
                            ),
// =========================================================
// Reset button
// =========================================================
                            Align(
                              alignment: const AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 50),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      idx = 1;
                                    });
                                    await _model.pageViewController?.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                  },
                                  text: '',
                                  icon: const Icon(
                                    Icons.restart_alt_outlined,
                                    size: 35,
                                  ),
                                  options: FFButtonOptions(
                                    width: MediaQuery.sizeOf(context).width *
                                        0.155,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.06,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFFC772F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
// =========================================================
// Next button
// =========================================================
                            Align(
                              alignment: const AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 50),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      if (idx < fileContent.length) {
                                        idx += 1;
                                      }
                                    });
                                    await _model.pageViewController?.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                  },
                                  text: '',
                                  icon: const Icon(
                                    Icons.chevron_right_rounded,
                                    size: 35,
                                  ),
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.15,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.06,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                    color: const Color(0xFFFC772F),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation']!),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('idx', idx));
  }
}
