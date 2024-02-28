// ignore_for_file: sized_box_for_whitespace

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';

String texto = '';
String imagen = '';
String player = '$cuento.$style.$idioma';
String cuento = '';
String style = '';
String idioma = '';

class StylesWidget extends StatefulWidget {
  const StylesWidget({super.key});

  @override
  State<StylesWidget> createState() => _StylesWidgetState();
}

class _StylesWidgetState extends State<StylesWidget>
    with TickerProviderStateMixin {
  late StylesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
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
    'buttonOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => StylesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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
        drawer: Container(
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
                Align(
                  alignment: const AlignmentDirectional(0, -1),
                  child: Container(
                    width: 414,
                    height: 142,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                35, 80, 0, 0),
                            child: Text(
                              texto,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Eczar',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 110,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              imagen,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -1),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                    child: wrapWithModel(
                      model: _model.componentStyleStylesModel,
                      updateCallback: () => setState(() {}),
                      child: const ComponentStyleStylesWidget(),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.6),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
                    child: wrapWithModel(
                      model: _model.componentLanguagesStyleModel,
                      updateCallback: () => setState(() {}),
                      child: const ComponentLanguagesStyleWidget(),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.01, 0.84),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 360, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PlayerWidget()));
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
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation']!),
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
