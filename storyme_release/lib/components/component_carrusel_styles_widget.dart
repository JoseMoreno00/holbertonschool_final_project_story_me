// ignore_for_file: sized_box_for_whitespace

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';

class ComponentCarruselStylesWidget extends StatefulWidget {
  const ComponentCarruselStylesWidget({super.key});

  @override
  State<ComponentCarruselStylesWidget> createState() =>
      _ComponentCarruselStylesWidgetState();
}

class _ComponentCarruselStylesWidgetState
    extends State<ComponentCarruselStylesWidget> {
  late ComponentCarruselStylesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCarruselStylesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 0.65,
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: CarouselSlider(
              items: [
                Container(
                  height: 55,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (kDebugMode) {
                                print('Button pressed ...');
                              }
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const PlayerWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/styles/cyber_style.jpg',
                                  ).image,
                                ),
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
                            height: MediaQuery.sizeOf(context).height * 0.05,
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
                                ('Cyberpunk'),
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
                Container(
                  height: 55,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (kDebugMode) {
                                print('Button pressed ...');
                              }
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const PlayerWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/styles/anime_style.jpg',
                                  ).image,
                                ),
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
                            height: MediaQuery.sizeOf(context).height * 0.05,
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
                                ('Anime'),
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
                Container(
                  height: 55,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (kDebugMode) {
                                print('Button pressed ...');
                              }
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const PlayerWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/styles/8bit_style.jpg',
                                  ).image,
                                ),
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
                            height: MediaQuery.sizeOf(context).height * 0.05,
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
                                ('8 bit'),
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
                autoPlayInterval: const Duration(milliseconds: (800 + 1500)),
                autoPlayCurve: Curves.linear,
                pauseAutoPlayInFiniteScroll: true,
                onPageChanged: (index, _) =>
                    _model.carouselCurrentIndex = index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
