import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bs_detalle_noticia_model.dart';
export 'bs_detalle_noticia_model.dart';

class BsDetalleNoticiaWidget extends StatefulWidget {
  const BsDetalleNoticiaWidget({
    super.key,
    String? nombre,
    String? descripcion,
    required this.imagen,
  })  : nombre = nombre ?? 'Error',
        descripcion = descripcion ?? 'Error';

  final String nombre;
  final String descripcion;
  final String? imagen;

  @override
  State<BsDetalleNoticiaWidget> createState() => _BsDetalleNoticiaWidgetState();
}

class _BsDetalleNoticiaWidgetState extends State<BsDetalleNoticiaWidget> {
  late BsDetalleNoticiaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsDetalleNoticiaModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 3.5,
      height: 850.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 75.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
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
                Container(
                  width: 290.0,
                  decoration: const BoxDecoration(),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    widget.nombre,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 10.0)).around(const SizedBox(width: 10.0)),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              widget.imagen!,
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: 160.0,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.6,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Align(
              alignment: const AlignmentDirectional(-1.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.descripcion,
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ].divide(const SizedBox(height: 20.0)),
      ),
    );
  }
}
