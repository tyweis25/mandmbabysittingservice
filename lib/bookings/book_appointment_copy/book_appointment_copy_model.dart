import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'book_appointment_copy_widget.dart' show BookAppointmentCopyWidget;
import 'package:flutter/material.dart';

class BookAppointmentCopyModel
    extends FlutterFlowModel<BookAppointmentCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    appbarModel.dispose();
  }
}
