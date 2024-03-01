// ignore_for_file: sized_box_for_whitespace

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';

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
    return Container(
      height: MediaQuery.sizeOf(context).height * 1,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.9,
              child: CarouselSlider(
                items: [
// =========================================================
// To add more stories duplicate the containers below this line,
// change values of "imagen", "nombre" and "cuento". Modify cover image.
// =========================================================
// Story "Caperuita Roja"
// =========================================================
                  Container(
                    height: 55,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                              onTap: () {
                                texto = 'Caperucita roja';
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
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.68,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/books/redridding.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 100,
                              constraints: const BoxConstraints(
                                minWidth: 200,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDECEA),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFFC772F),
                                  width: 1,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0, -1),
                                child: AutoSizeText(
                                  ('Caperucita Roja'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        color: const Color(0xFF382924),
                                      ),
                                  minFontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
// =========================================================
// Story "Los tres chanchitos"
// =========================================================
                  Container(
                    height: 55,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                              onTap: () {
                                texto = 'Los tres cerditos';
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
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.68,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/books/3cerd.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 100,
                              constraints: const BoxConstraints(
                                minWidth: 200,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDECEA),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFFC772F),
                                  width: 1,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0, -1),
                                child: AutoSizeText(
                                  ('Los tres chanchitos'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        color: const Color(0xFF382924),
                                      ),
                                  minFontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
// =========================================================
// Story "Las aventuras de Cape"
// =========================================================
                  Container(
                    height: 55,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                              onTap: () {
                                texto = 'Las aventuras de Cappe';
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
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.68,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/books/cape2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 100,
                              constraints: const BoxConstraints(
                                minWidth: 200,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDECEA),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFFC772F),
                                  width: 1,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0, -1),
                                child: AutoSizeText(
                                  ('Las aventuras de cape'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        color: const Color(0xFF382924),
                                      ),
                                  minFontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
// =========================================================
// Story "Perrandalf"
// =========================================================
                  Container(
                    height: 55,
                    child: Stack(
                      children: [
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
                                width: MediaQuery.sizeOf(context).width * 0.8,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.68,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/books/perrandalf.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: 100,
                              constraints: const BoxConstraints(
                                minWidth: 200,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDECEA),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFFC772F),
                                  width: 1,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0, -1),
                                child: AutoSizeText(
                                  ('Perrandalf'),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        color: const Color(0xFF382924),
                                      ),
                                  minFontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
// =========================================================
// Carrousel controller
// =========================================================
                ],
                carouselController: _model.carouselController ??=
                    CarouselController(),
                options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: 0.7,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(milliseconds: (800 + 2000)),
                  autoPlayCurve: Curves.linear,
                  pauseAutoPlayInFiniteScroll: true,
                  onPageChanged: (index, _) =>
                      _model.carouselCurrentIndex = index,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
