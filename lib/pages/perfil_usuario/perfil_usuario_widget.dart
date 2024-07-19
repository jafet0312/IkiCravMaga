import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'perfil_usuario_model.dart';
export 'perfil_usuario_model.dart';

class PerfilUsuarioWidget extends StatefulWidget {
  const PerfilUsuarioWidget({super.key});

  @override
  State<PerfilUsuarioWidget> createState() => _PerfilUsuarioWidgetState();
}

class _PerfilUsuarioWidgetState extends State<PerfilUsuarioWidget> {
  late PerfilUsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilUsuarioModel());

    _model.txtfCorreoTextController ??=
        TextEditingController(text: '0000-0000');
    _model.txtfCorreoFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Perfil de Usuario',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Información Personal',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Sora',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Nombre: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Nombre Usuario',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Correo: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'correo@usuario.com',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                  child: TextFormField(
                                    controller: _model.txtfCorreoTextController,
                                    focusNode: _model.txtfCorreoFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.txtfCorreoTextController',
                                      const Duration(milliseconds: 200),
                                      () => setState(() {}),
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Teléfono',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      suffixIcon: _model
                                              .txtfCorreoTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.txtfCorreoTextController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 22,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .txtfCorreoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Editar',
                              icon: const Icon(
                                Icons.edit,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: 110.0,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ]
                          .divide(const SizedBox(height: 20.0))
                          .around(const SizedBox(height: 20.0)),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.389,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Logros',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Sora',
                              letterSpacing: 0.0,
                            ),
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          ListTile(
                            title: Text(
                              'Manejo de cuchillo',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            subtitle: Text(
                              'Felicitaciones, has completado con exito el curso de manejo de cuchillo',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Control de agreciones',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            subtitle: Text(
                              'Felicitaciones, has completado con exito el curso de control de agreciones',
                              textAlign: TextAlign.justify,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ],
                      ),
                    ]
                        .divide(const SizedBox(height: 20.0))
                        .around(const SizedBox(height: 20.0)),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Login');
                      },
                      text: 'Cerrar Sesión',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Preferencias');
                      },
                      text: 'Preferencias',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ].divide(const SizedBox(height: 20.0)).around(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
