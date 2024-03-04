// =========================================================
// Import the following packages
// =========================================================
import 'package:storyme_release/imports.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
// =========================================================
// Transition animations
// =========================================================
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: const Offset(0, 30),
          end: const Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
// =========================================================
// Call for the lateral menu
// =========================================================
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
// App bar
// =========================================================
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 100,
            height: 100,
            fit: BoxFit.contain,
          ),
          backgroundColor: const Color(0xFFF57340),
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
                Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
// =========================================================
// Call for carrousel
// =========================================================
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0, 0.5),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.85,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0, -1),
                                child: wrapWithModel(
                                  model: _model.componentCarruselHomeModel,
                                  updateCallback: () => setState(() {}),
                                  child: const ComponentCarruselHomeWidget(),
                                ),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          ),
                        ),
                        Flexible(
                          child: Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0, 1),
                                child: AutoSizeText(
                                  ('Qué aventura quieres vivir hoy?'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        color: const Color(0xFF382924),
                                        fontSize: 40,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  minFontSize: 20,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation']!),
                              ),
                            ),
                          ),
                        ),
                      ],
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
}
