import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'guias_model.dart';
export 'guias_model.dart';

class GuiasWidget extends StatefulWidget {
  const GuiasWidget({super.key});

  @override
  State<GuiasWidget> createState() => _GuiasWidgetState();
}

class _GuiasWidgetState extends State<GuiasWidget> {
  late GuiasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuiasModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
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
              'Guias de uso',
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 366.0,
                    height: 267.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Como visualizar y matricular cursos',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 10.0))
                          .around(const SizedBox(height: 10.0)),
                    ),
                  ),
                  Container(
                    width: 366.0,
                    height: 267.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Como visualizar y cancelar cursos matriculados',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 10.0))
                          .around(const SizedBox(height: 10.0)),
                    ),
                  ),
                ].divide(const SizedBox(height: 30.0)).around(const SizedBox(height: 30.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
