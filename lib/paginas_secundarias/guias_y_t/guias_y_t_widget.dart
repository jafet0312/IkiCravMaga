import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'guias_y_t_model.dart';
export 'guias_y_t_model.dart';

class GuiasYTWidget extends StatefulWidget {
  const GuiasYTWidget({super.key});

  @override
  State<GuiasYTWidget> createState() => _GuiasYTWidgetState();
}

class _GuiasYTWidgetState extends State<GuiasYTWidget> {
  late GuiasYTModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuiasYTModel());
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
        onTap: () => FocusScope.of(context).unfocus(),
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
                'eygujvao' /* Guias de uso */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Sora',
                color: Colors.white,
                fontSize: 22.0,
                letterSpacing: 0.0,
                shadows: [
                  Shadow(
                    color: FlutterFlowTheme.of(context).primaryText,
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
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: SingleChildScrollView(
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
                            FFLocalizations.of(context).getText(
                              'mikm6b35' /* Entrevista 1 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: FlutterFlowYoutubePlayer(
                              url: 'https://youtu.be/eXACRn8HIiY',
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
                            FFLocalizations.of(context).getText(
                              'ywwgf69o' /* Entrevista 2 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: FlutterFlowYoutubePlayer(
                              url: 'https://youtu.be/zWtWzx6HSwM',
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
                      height: 277.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ug8vf1j1' /* Entrevista 3 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: FlutterFlowYoutubePlayer(
                              url: 'https://youtu.be/TRFaL5iUSZw',
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
                  ]
                      .divide(const SizedBox(height: 30.0))
                      .around(const SizedBox(height: 30.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
