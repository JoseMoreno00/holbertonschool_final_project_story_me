import 'package:flutter/material.dart';
import 'package:story_me_v40b/functions/bottom_navigation_bar.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BibliotecaModel {
  CarouselController carouselController = CarouselController();
  int carouselCurrentIndex = 0;
}

class BibliotecaScreen extends StatefulWidget {
  const BibliotecaScreen({Key? key}) : super(key: key);

  @override
  _BibliotecaScreenState createState() => _BibliotecaScreenState();
}

class _BibliotecaScreenState extends State<BibliotecaScreen> {
  final BibliotecaModel _model = BibliotecaModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          const SizedBox(height: 480),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 280.0,
              child: CarouselSlider(
                items: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('imagencaperucita pressed ...');
                          },
                          text: '',
                          options: FFButtonOptions(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      Text(
                        'Caperucita Roja',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Eczar',
                            ),
                      ),
                    ],
                  ),
                  // Otros elementos del carrusel
                ],
                carouselController: _model.carouselController,
                options: CarouselOptions(
                  initialPage: _model.carouselCurrentIndex,
                  viewportFraction: 0.5,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.25,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: false,
                  onPageChanged: (index, _) {
                    setState(() {
                      _model.carouselCurrentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          //const Center(
          //child: Text(
          //'Biblioteca',
          // style: TextStyle(fontSize: 24, color: Colors.black),
          // ),
          //),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pop();
          } else if (index == 1) {
            Navigator.of(context).pushNamed('/cuentos');
          } else if (index == 2) {
            Navigator.of(context).pushNamed('/biblioteca');
          } else if (index == 3) {
            Navigator.of(context).pushNamed('/descargas');
          } else if (index == 4) {
            Navigator.of(context).pushNamed('/menu');
          }
        },
      ),
    );
  }
}
