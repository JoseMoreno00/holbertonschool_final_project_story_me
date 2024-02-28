import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';

class ComponentLogoWidget extends StatefulWidget {
  const ComponentLogoWidget({super.key});

  @override
  State<ComponentLogoWidget> createState() => _ComponentLogoWidgetState();
}

class _ComponentLogoWidgetState extends State<ComponentLogoWidget>
    with TickerProviderStateMixin {
  late ComponentLogoModel _model;

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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentLogoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, -1),
      child: Container(
        width: 414,
        height: 184,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Column(
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
                      width: 172,
                      height: 122,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Text(
                  'StoryMe',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DARKLANDS',
                        fontSize: 40,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
