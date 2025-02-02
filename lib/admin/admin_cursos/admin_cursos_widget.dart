import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'admin_cursos_model.dart';
export 'admin_cursos_model.dart';

class AdminCursosWidget extends StatefulWidget {
  const AdminCursosWidget({super.key});

  @override
  State<AdminCursosWidget> createState() => _AdminCursosWidgetState();
}

class _AdminCursosWidgetState extends State<AdminCursosWidget> {
  late AdminCursosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminCursosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.startDate = functions.startDate(getCurrentTimestamp);
      _model.endDate = functions.endDate(getCurrentTimestamp);
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CoursesRecord>>(
      stream: queryCoursesRecord(
        queryBuilder: (coursesRecord) => coursesRecord
            .where(
              'date',
              isGreaterThanOrEqualTo: _model.startDate,
            )
            .where(
              'date',
              isLessThanOrEqualTo: _model.endDate,
            )
            .orderBy('date'),
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
        List<CoursesRecord> adminCursosCoursesRecordList = snapshot.data!;

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
                  'flhc46l7' /* Admin Cursos */,
                ),
                textAlign: TextAlign.center,
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
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.24,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowCalendar(
                            color: FlutterFlowTheme.of(context).primary,
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            weekFormat: true,
                            weekStartsMonday: true,
                            initialDate: _model.startDate,
                            rowHeight: 35.0,
                            onChange: (DateTimeRange? newSelectedDate) async {
                              if (_model.calendarioSelectedDay ==
                                  newSelectedDate) {
                                return;
                              }
                              _model.calendarioSelectedDay = newSelectedDate;
                              _model.startDate =
                                  _model.calendarioSelectedDay?.start;
                              _model.endDate =
                                  _model.calendarioSelectedDay?.end;
                              setState(() {});
                              setState(() {});
                            },
                            titleStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Sora',
                                  letterSpacing: 0.0,
                                ),
                            dayOfWeekStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            dateStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            selectedDateStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            inactiveDateStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 40.0,
                                child: custom_widgets.Button(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 40.0,
                                  icon: const Icon(
                                    Icons.add_circle,
                                  ),
                                  text: 'Nuevo',
                                  startColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  endColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  onPressed: () async {},
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('RegistrarCursos');
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 40.0,
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                            ],
                          ),
                        ]
                            .divide(const SizedBox(height: 10.0))
                            .around(const SizedBox(height: 10.0)),
                      ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final cursos = adminCursosCoursesRecordList.toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: cursos.length,
                            itemBuilder: (context, cursosIndex) {
                              final cursosItem = cursos[cursosIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
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
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    cursosItem.imageURL,
                                                    width: 125.0,
                                                    height: 100.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 165.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: AutoSizeText(
                                                        cursosItem.name,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 140.0,
                                                      child: Divider(
                                                        height: 20.0,
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                                        secondText: cursosItem
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
                                                        secondText: cursosItem
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
                                                        firstText:
                                                            'Disponibles: ',
                                                        secondText: functions
                                                            .calculoCupos(
                                                                cursosItem
                                                                    .maxCapacity,
                                                                cursosItem
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
                                                        secondText:
                                                            dateTimeFormat(
                                                          "jm",
                                                          cursosItem.date!,
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
                                                  ].divide(
                                                      const SizedBox(height: 5.0)),
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
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await cursosItem.reference
                                                    .delete();
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
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
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ]
                      .divide(const SizedBox(height: 20.0))
                      .around(const SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
