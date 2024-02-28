import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';
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

  final scaffoldKey = GlobalKey<ScaffoldState>();
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
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerModel());
    readFile();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  var idx = 0;
  List<String> fileContent = [];
  Future<void> readFile() async {
    String content =
        await rootBundle.loadString('assets/books/3_little_pigs/es/book.txt');
    List<String> lineas = content.split('\n');
    setState(() {
      fileContent = lineas;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFB89E7D),
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
                    wrapWithModel(
                      model: _model.componentLogoModel,
                      updateCallback: () => setState(() {}),
                      child: const ComponentLogoWidget(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.99, -0.54),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 0),
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
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 500,
                                  child: Stack(
                                    children: [
                                      PageView(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            child: Image.network(
                                              'https://picsum.photos/seed/16/600',
                                              width: 300,
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://picsum.photos/seed/860/600',
                                              width: 300,
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.network(
                                              'https://picsum.photos/seed/677/600',
                                              width: 300,
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1, 1),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(16, 0, 0, 16),
                                          child: smooth_page_indicator
                                              .SmoothPageIndicator(
                                            controller: _model
                                                    .pageViewController ??=
                                                PageController(initialPage: 0),
                                            count: 3,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController!
                                                  .animateToPage(
                                                i,
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                curve: Curves.ease,
                                              );
                                            },
                                            effect: smooth_page_indicator
                                                .ExpandingDotsEffect(
                                              expansionFactor: 3,
                                              spacing: 8,
                                              radius: 16,
                                              dotWidth: 16,
                                              dotHeight: 8,
                                              dotColor:
                                                  FlutterFlowTheme.of(context)
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
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.93, 0.21),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 20, 10, 0),
                          child: Container(
                            // conteiner text of the book
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
                            child: Text(fileContent[idx]),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await _model.pageViewController?.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          text: '',
                          icon: const Icon(
                            Icons.chevron_left_rounded,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                    Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('pause pressed ...');
                            }
                          },
                          text: '',
                          icon: const Icon(
                            Icons.pause,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 10, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                    Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: FFButtonWidget(
                          onPressed: () {
                            if (kDebugMode) {
                              print('play pressed ...');
                            }
                          },
                          text: '',
                          icon: const Icon(
                            Icons.play_arrow,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 10, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                    Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await _model.pageViewController?.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          text: '',
                          icon: const Icon(
                            Icons.restart_alt_outlined,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 10, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                    Align(
                      // NEXT BUTTOM!!!
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                        child: FFButtonWidget(
                          onPressed: () async {
                            idx += 1;
                            print(idx);
                            await _model.pageViewController?.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          text: '',
                          icon: const Icon(
                            Icons.chevron_right_rounded,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
