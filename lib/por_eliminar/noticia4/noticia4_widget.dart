import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'noticia4_model.dart';
export 'noticia4_model.dart';

class Noticia4Widget extends StatefulWidget {
  const Noticia4Widget({super.key});

  @override
  State<Noticia4Widget> createState() => _Noticia4WidgetState();
}

class _Noticia4WidgetState extends State<Noticia4Widget> {
  late Noticia4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Noticia4Model());
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
              'sh8v6p4x' /* 20 Beneficios */,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 40.0, 40.0, 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Image.asset(
                      'assets/images/IKIIMAGEN4.PNG',
                      width: 393.0,
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 30.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'omelhk5i' /* ¿Estás buscando un sistema de ... */,
                    ),
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
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
