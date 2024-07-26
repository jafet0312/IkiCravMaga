import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'detalle_noticia_model.dart';
export 'detalle_noticia_model.dart';

class DetalleNoticiaWidget extends StatefulWidget {
  const DetalleNoticiaWidget({super.key});

  @override
  State<DetalleNoticiaWidget> createState() => _DetalleNoticiaWidgetState();
}

class _DetalleNoticiaWidgetState extends State<DetalleNoticiaWidget> {
  late DetalleNoticiaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalleNoticiaModel());
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
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              '8uh5w0x0' /* Mitos y realidades 
del Krav M... */
              ,
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Sora',
              color: Colors.white,
              fontSize: 22.0,
              letterSpacing: 0.0,
              shadows: [
                Shadow(
                  color: FlutterFlowTheme.of(context).alternate,
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 2.0,
                )
              ],
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.75,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image.asset(
                            'assets/images/mitos_de_KM.webp',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'yelkhmaa' /* El Krav Maga es un método efic... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 20.0))
                          .around(const SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 20.0)).around(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
