import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_cursos_copy_widget.dart' show AdminCursosCopyWidget;
import 'package:flutter/material.dart';

class AdminCursosCopyModel extends FlutterFlowModel<AdminCursosCopyWidget> {
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
