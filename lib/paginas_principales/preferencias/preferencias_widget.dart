import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'preferencias_model.dart';
export 'preferencias_model.dart';

class PreferenciasWidget extends StatefulWidget {
  const PreferenciasWidget({super.key});

  @override
  State<PreferenciasWidget> createState() => _PreferenciasWidgetState();
}

class _PreferenciasWidgetState extends State<PreferenciasWidget> {
  late PreferenciasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreferenciasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SettingsRecord>>(
      stream: querySettingsRecord(
        queryBuilder: (settingsRecord) => settingsRecord.where(
          'name',
          isEqualTo: 'Textos',
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<SettingsRecord> preferenciasSettingsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final preferenciasSettingsRecord =
            preferenciasSettingsRecordList.isNotEmpty
                ? preferenciasSettingsRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '9jzdfuaq' /* Preferencias */,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'n0vewkcp' /* Textos */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          StreamBuilder<List<SettingsRecord>>(
                                            stream: querySettingsRecord(
                                              queryBuilder: (settingsRecord) =>
                                                  settingsRecord.where(
                                                'name',
                                                isEqualTo: 'Textos',
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<SettingsRecord>
                                                  sliderSettingsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final sliderSettingsRecord =
                                                  sliderSettingsRecordList
                                                          .isNotEmpty
                                                      ? sliderSettingsRecordList
                                                          .first
                                                      : null;

                                              return Slider(
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                min: 10.0,
                                                max: 15.0,
                                                value: _model.sliderValue ??=
                                                    10.0,
                                                label: _model.sliderValue
                                                    ?.toStringAsFixed(0),
                                                divisions: 5,
                                                onChanged: (newValue) async {
                                                  newValue = double.parse(
                                                      newValue
                                                          .toStringAsFixed(0));
                                                  setState(() => _model
                                                      .sliderValue = newValue);

                                                  await preferenciasSettingsRecord!
                                                      .reference
                                                      .update(
                                                          createSettingsRecordData(
                                                    title: functions
                                                        .pasarEntero(_model
                                                            .sliderValue!),
                                                  ));
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(width: 20.0)),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          StreamBuilder<List<SettingsRecord>>(
                                            stream: querySettingsRecord(
                                              queryBuilder: (settingsRecord) =>
                                                  settingsRecord.where(
                                                'name',
                                                isEqualTo: 'Textos',
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<SettingsRecord>
                                                  txtMuestraSettingsRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final txtMuestraSettingsRecord =
                                                  txtMuestraSettingsRecordList
                                                          .isNotEmpty
                                                      ? txtMuestraSettingsRecordList
                                                          .first
                                                      : null;

                                              return Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'zx6sftws' /* Letras */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize:
                                                              preferenciasSettingsRecord
                                                                  ?.title
                                                                  .toDouble(),
                                                          letterSpacing: 0.0,
                                                        ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Lottie.network(
                                      'https://lottie.host/8a5fd94d-2899-4028-8e07-5ed8db1aa84f/B7f7oMyfi8.json',
                                      width: 150.0,
                                      height: 150.0,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                  ],
                                ),
                              ]
                                  .divide(const SizedBox(height: 30.0))
                                  .addToStart(const SizedBox(height: 20.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 1.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  StreamBuilder<List<SettingsRecord>>(
                                    stream: querySettingsRecord(
                                      queryBuilder: (settingsRecord) =>
                                          settingsRecord.where(
                                        'name',
                                        isEqualTo: 'Textos',
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<SettingsRecord>
                                          txtSelecIdiomaSettingsRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final txtSelecIdiomaSettingsRecord =
                                          txtSelecIdiomaSettingsRecordList
                                                  .isNotEmpty
                                              ? txtSelecIdiomaSettingsRecordList
                                                  .first
                                              : null;

                                      return Text(
                                        FFLocalizations.of(context).getText(
                                          'kfdvmxyf' /* Seleccionar idioma */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize:
                                                  txtSelecIdiomaSettingsRecord
                                                      ?.title
                                                      .toDouble(),
                                              letterSpacing: 0.0,
                                            ),
                                      );
                                    },
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: FlutterFlowLanguageSelector(
                                            width: 200.0,
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                            borderColor: Colors.transparent,
                                            dropdownIconColor: Colors.white,
                                            borderRadius: 8.0,
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 13.0,
                                            ),
                                            hideFlags: true,
                                            flagSize: 24.0,
                                            flagTextGap: 8.0,
                                            currentLanguage:
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                            languages:
                                                FFLocalizations.languages(),
                                            onChanged: (lang) =>
                                                setAppLanguage(context, lang),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                                    .divide(const SizedBox(height: 10.0))
                                    .around(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 1.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  StreamBuilder<List<SettingsRecord>>(
                                    stream: querySettingsRecord(
                                      queryBuilder: (settingsRecord) =>
                                          settingsRecord.where(
                                        'name',
                                        isEqualTo: 'Textos',
                                      ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<SettingsRecord>
                                          txtOpinionUserSettingsRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final txtOpinionUserSettingsRecord =
                                          txtOpinionUserSettingsRecordList
                                                  .isNotEmpty
                                              ? txtOpinionUserSettingsRecordList
                                                  .first
                                              : null;

                                      return Text(
                                        FFLocalizations.of(context).getText(
                                          'fappjbor' /* Su opinión es importante para ... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize:
                                                  txtOpinionUserSettingsRecord
                                                      ?.title
                                                      .toDouble(),
                                              letterSpacing: 0.0,
                                            ),
                                      );
                                    },
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context
                                              .pushNamed('SugerenciasCliente');
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                                FlutterFlowTheme.of(context)
                                                    .secondary
                                              ],
                                              stops: const [0.1, 1.0],
                                              begin: const AlignmentDirectional(
                                                  1.0, -1.0),
                                              end: const AlignmentDirectional(
                                                  -1.0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9zw2c5e3' /* Sugerencias */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 10.0))
                                    .around(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 20.0))
                            .around(const SizedBox(height: 20.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
