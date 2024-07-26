import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bs_inicio_sesion_fallido_model.dart';
export 'bs_inicio_sesion_fallido_model.dart';

class BsInicioSesionFallidoWidget extends StatefulWidget {
  const BsInicioSesionFallidoWidget({super.key});

  @override
  State<BsInicioSesionFallidoWidget> createState() =>
      _BsInicioSesionFallidoWidgetState();
}

class _BsInicioSesionFallidoWidgetState
    extends State<BsInicioSesionFallidoWidget> {
  late BsInicioSesionFallidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsInicioSesionFallidoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            FFLocalizations.of(context).getText(
              '6pqmivzg' /* Inicio de sesión fallido */,
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Sora',
                  color: FlutterFlowTheme.of(context).error,
                  letterSpacing: 0.0,
                ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              Navigator.pop(context);
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: 40.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).tertiary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  stops: const [0.1, 1.0],
                  begin: const AlignmentDirectional(1.0, -1.0),
                  end: const AlignmentDirectional(-1.0, 1.0),
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_downward,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      's3wukcow' /* Ok */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ].divide(const SizedBox(height: 30.0)).around(const SizedBox(height: 30.0)),
      ),
    );
  }
}
