import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'matricula_widget.dart' show MatriculaWidget;
import 'package:flutter/material.dart';

class MatriculaModel extends FlutterFlowModel<MatriculaWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendario widget.
  DateTimeRange? calendarioSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarioSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
