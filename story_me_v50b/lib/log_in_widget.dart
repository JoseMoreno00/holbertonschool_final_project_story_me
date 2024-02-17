import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'app/log_in_model.dart';
export 'app/log_in_model.dart';

class LogInWidget extends StatefulWidget {
  const LogInWidget({super.key});

  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  late LogInModel _model;
  Map<String, String> formData = {'email': '', 'password': ''};

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogInModel());

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.contraseaController ??= TextEditingController();
    _model.contraseaFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFE1D5B6),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 414,
                    height: 142,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  130, 20, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/40a74bde94d30abf874882bc8c812fa0.png',
                                  width: 133,
                                  height: 97,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  130, 0, 0, 0),
                              child: Text(
                                'StoryMe',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'DARKLANDS',
                                      fontSize: 28,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                    child: Container(
                      width: 353,
                      height: 401,
                      decoration: const BoxDecoration(
                        color: Color(0x9CFFFFFF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 25, 0, 0),
                              child: Text(
                                'Bienvenido/a! de nuevo!',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: const Color(0xFF1E1210),
                                      fontSize: 24,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 30, 10, 0),
                              child: TextFormField(
                                onChanged: (value) async {
                                    formData['email'] = value;
                                },
                                controller: _model.emailController,
                                focusNode: _model.emailFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFC4C5C7),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.emailControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 20, 10, 0),
                              child: TextFormField(
                               onChanged: (value) async {
                                    formData['password'] = value;
                                },
                                controller: _model.contraseaController,
                                focusNode: _model.contraseaFocusNode,
                                autofocus: true,
                                obscureText: !_model.contraseaVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFC4C5C7),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.contraseaVisibility =
                                          !_model.contraseaVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.contraseaVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.contraseaControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 0, 0),
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue ??= true,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 0, 0),
                                child: Text(
                                  'Recordarme',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    40, 10, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Olvidaste tu contraseña?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Eczar',
                                        fontSize: 16,
                                      ),
                                )),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 25, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print('Button pressed ...');
                                  }
                                },
                                text: 'Iniciar Sesión',
                                options: FFButtonOptions(
                                  height: 40,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Eczar',
                                        color: const Color(0xFF1E1210),
                                        fontSize: 20,
                                      ),
                                  elevation: 15,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 14, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'No tienes cuenta?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Eczar',
                                      color: const Color(0xEA1E1210),
                                      fontSize: 18,
                                    ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
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
