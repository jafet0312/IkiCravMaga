import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bs_sin_cupos_model.dart';
export 'bs_sin_cupos_model.dart';

class BsSinCuposWidget extends StatefulWidget {
  const BsSinCuposWidget({super.key});

  @override
  State<BsSinCuposWidget> createState() => _BsSinCuposWidgetState();
}

class _BsSinCuposWidgetState extends State<BsSinCuposWidget> {
  late BsSinCuposModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsSinCuposModel());
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
              'cfmhr5pw' /* Ya no hay campos disponibles */,
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).titleLarge.override(
              fontFamily: 'Sora',
              color: FlutterFlowTheme.of(context).error,
              letterSpacing: 0.0,
              shadows: [
                Shadow(
                  color: FlutterFlowTheme.of(context).primary,
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 2.0,
                )
              ],
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
                      '2zq51973' /* Ok */,
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
