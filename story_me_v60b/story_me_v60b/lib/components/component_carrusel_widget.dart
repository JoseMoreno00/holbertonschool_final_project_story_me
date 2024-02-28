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
            height: 397,
            child: CarouselSlider(
              items: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      onTap: () {
                        texto = 'Caperucita\nroja';
                        imagen = 'assets/images/books/redridding.jpg';
                        cuento = 'caperucita';
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const StylesWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 280,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/books/redridding.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: const Center(),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 90,
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
                    GestureDetector(
                      onTap: () {
                        texto = 'Los tres\ncerditos';
                        imagen = 'assets/images/books/3cerd.jpg';
                        cuento = 'Los 3 cerditos';
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const StylesWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 280,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/books/3cerd.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 90,
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
                    GestureDetector(
                      onTap: () {
                        texto = 'Las aventuras\nde Cappe';
                        imagen = 'assets/images/books/cape2.jpg';
                        cuento = 'Las aventuras de cape';
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const StylesWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 280,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/books/cape2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 90,
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
                    GestureDetector(
                      onTap: () {
                        texto = 'Perrandalf';
                        imagen = 'assets/images/books/perrandalf.jpg';
                        cuento = 'Perrandalf';
                        if (kDebugMode) {
                          print('Button pressed ...');
                        }
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const StylesWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 280,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/books/perrandalf.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 185,
                      height: 90,
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
