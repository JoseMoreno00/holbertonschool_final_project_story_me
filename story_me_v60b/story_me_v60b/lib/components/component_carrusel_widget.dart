// ignore_for_file: sized_box_for_whitespace

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:story_me_v60b/imports.dart';

class ComponentCarruselHomeWidget extends StatefulWidget {
  const ComponentCarruselHomeWidget({super.key});

  @override
  State<ComponentCarruselHomeWidget> createState() =>
      _ComponentCarruselHomeWidgetState();
}

class _ComponentCarruselHomeWidgetState
    extends State<ComponentCarruselHomeWidget> {
  late ComponentCarruselHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCarruselHomeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 0,
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: double.infinity,
          ),
          decoration: const BoxDecoration(),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Container(
            width: double.infinity,
            height: 432,
            child: CarouselSlider(
              items: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 200,
                        height: 300,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 100,
                      constraints: const BoxConstraints(
                        minWidth: 200,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Text(
                          'Caperuita Roja',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Eczar',
                                    color: const Color(0xFF382924),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const StylesWidget()));
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 200,
                        height: 300,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 100,
                      constraints: const BoxConstraints(
                        minWidth: 200,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Text(
                          'Los tres cerditos',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Eczar',
                                    color: const Color(0xFF382924),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 200,
                        height: 300,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 100,
                      constraints: const BoxConstraints(
                        minWidth: 200,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Text(
                          'Las aventuras de Cape',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Eczar',
                                    color: const Color(0xFF382924),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                      },
                      text: '',
                      options: FFButtonOptions(
                        width: 200,
                        height: 300,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
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
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 100,
                      constraints: const BoxConstraints(
                        minWidth: 200,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0, -1),
                        child: Text(
                          'Perrandalf',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Eczar',
                                    color: const Color(0xFF382924),
                                  ),
                        ),
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
      ],
    );
  }
}
