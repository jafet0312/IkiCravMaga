import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'pruebas_widgets_model.dart';
export 'pruebas_widgets_model.dart';

class PruebasWidgetsWidget extends StatefulWidget {
  const PruebasWidgetsWidget({super.key});

  @override
  State<PruebasWidgetsWidget> createState() => _PruebasWidgetsWidgetState();
}

class _PruebasWidgetsWidgetState extends State<PruebasWidgetsWidget> {
  late PruebasWidgetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PruebasWidgetsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'joc57url' /* Titulo Página */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Sora',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: custom_widgets.ConcatenatedText(
                  width: 200.0,
                  height: 100.0,
                  firstText: 'Texto: ',
                  secondText: 'Segundo Texto',
                  fontSize: 20.0,
                  textColor: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
