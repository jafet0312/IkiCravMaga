import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'reproductor_historia_krav_model.dart';
export 'reproductor_historia_krav_model.dart';

class ReproductorHistoriaKravWidget extends StatefulWidget {
  const ReproductorHistoriaKravWidget({super.key});

  @override
  State<ReproductorHistoriaKravWidget> createState() =>
      _ReproductorHistoriaKravWidgetState();
}

class _ReproductorHistoriaKravWidgetState
    extends State<ReproductorHistoriaKravWidget> {
  late ReproductorHistoriaKravModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReproductorHistoriaKravModel());
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
          leading: FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primary,
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).accent1,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'kezcscjt' /* Historia del Krav Magá */,
            ),
            textAlign: TextAlign.start,
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
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.asset(
                    'assets/images/IKMF-234x300.jpg',
                    width: 300.0,
                    height: 495.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(47.0, 40.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 300.0,
                        height: 200.0,
                        child: custom_widgets.AudioPlayerWidget(
                          width: 300.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
