import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'cursos_matriculados_model.dart';
export 'cursos_matriculados_model.dart';

class CursosMatriculadosWidget extends StatefulWidget {
  const CursosMatriculadosWidget({super.key});

  @override
  State<CursosMatriculadosWidget> createState() =>
      _CursosMatriculadosWidgetState();
}

class _CursosMatriculadosWidgetState extends State<CursosMatriculadosWidget> {
  late CursosMatriculadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CursosMatriculadosModel());
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
              'rgebz8yb' /* Cursos Matriculados */,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: StreamBuilder<List<CoursesRecord>>(
                    stream: queryCoursesRecord(
                      queryBuilder: (coursesRecord) => coursesRecord
                          .where(
                            'participants',
                            arrayContains: currentUserReference,
                          )
                          .where(
                            'date',
                            isGreaterThan:
                                functions.startDate(getCurrentTimestamp),
                          )
                          .orderBy('date'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<CoursesRecord> listViewCoursesRecordList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewCoursesRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewCoursesRecord =
                              listViewCoursesRecordList[listViewIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 300.0,
                                      decoration: const BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                listViewCoursesRecord.imageURL,
                                                width: 125.0,
                                                height: 100.0,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 165.0,
                                                  decoration: const BoxDecoration(),
                                                  child: AutoSizeText(
                                                    listViewCoursesRecord.name,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 140.0,
                                                  child: Divider(
                                                    height: 20.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 140.0,
                                                  height: 20.0,
                                                  child: custom_widgets
                                                      .ConcatenatedText(
                                                    width: 140.0,
                                                    height: 20.0,
                                                    firstText: 'Precio: ₡',
                                                    secondText:
                                                        listViewCoursesRecord
                                                            .price
                                                            .toString(),
                                                    fontSize: 14.0,
                                                    textColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    fontFamily:
                                                        'Secondary Family',
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 140.0,
                                                  height: 20.0,
                                                  child: custom_widgets
                                                      .ConcatenatedText(
                                                    width: 140.0,
                                                    height: 20.0,
                                                    firstText: 'Cupos: ',
                                                    secondText:
                                                        listViewCoursesRecord
                                                            .maxCapacity
                                                            .toString(),
                                                    fontSize: 14.0,
                                                    textColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 140.0,
                                                  height: 20.0,
                                                  child: custom_widgets
                                                      .ConcatenatedText(
                                                    width: 140.0,
                                                    height: 20.0,
                                                    firstText: 'Disponibles: ',
                                                    secondText: functions
                                                        .calculoCupos(
                                                            listViewCoursesRecord
                                                                .maxCapacity,
                                                            listViewCoursesRecord
                                                                .participants
                                                                .length)
                                                        .toString(),
                                                    fontSize: 14.0,
                                                    textColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 140.0,
                                                  height: 20.0,
                                                  child: custom_widgets
                                                      .ConcatenatedText(
                                                    width: 140.0,
                                                    height: 20.0,
                                                    firstText: 'Hora: ',
                                                    secondText: dateTimeFormat(
                                                      "jm",
                                                      listViewCoursesRecord
                                                          .date!,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    fontSize: 14.0,
                                                    textColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100.0,
                                      child: VerticalDivider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await listViewCoursesRecord
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'participants':
                                                      FieldValue.arrayRemove([
                                                    currentUserReference
                                                  ]),
                                                },
                                              ),
                                            });
                                          },
                                          child: Icon(
                                            Icons.cancel,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                                      .divide(const SizedBox(width: 0.0))
                                      .around(const SizedBox(width: 0.0)),
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).accent4,
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
