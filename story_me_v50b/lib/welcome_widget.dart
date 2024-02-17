import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storymev50b2/log_in_widget.dart';

import 'app/welcome_model.dart';
export 'app/welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  late WelcomeModel _model;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LogInWidget()),
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                alignment: const AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 300,
                          height: 214,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'StoryMe',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'DARKLANDS',
                        color: const Color(0xFF170E0D),
                        fontSize: 85,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Listo para una nueva aventura?',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                            fontFamily: 'Eczar',
                            color: const Color(0xFF170E0D),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
