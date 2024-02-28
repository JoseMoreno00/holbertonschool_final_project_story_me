// ignore_for_file: sized_box_for_whitespace

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                  child: wrapWithModel(
                    model: _model.componentLogoModel,
                    updateCallback: () => setState(() {}),
                    child: const ComponentLogoWidget(),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.5),
                  child: Container(
                    width: double.infinity,
                    height: 429,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: wrapWithModel(
                      model: _model.componentCarruselHomeModel,
                      updateCallback: () => setState(() {}),
                      child: const ComponentCarruselHomeWidget(),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.98, -0.42),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                    child: Text(
                      'Libros',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Eczar',
                            fontSize: 27,
                            fontWeight: FontWeight.normal,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation']!),
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
