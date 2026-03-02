import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'book_appointment_widget.dart' show BookAppointmentWidget;
import 'package:flutter/material.dart';

class BookAppointmentModel extends FlutterFlowModel<BookAppointmentWidget> {
  ///  Local state fields for this page.

  List<AvailableTimeslotsDataStruct> availableSlots = [];
  void addToAvailableSlots(AvailableTimeslotsDataStruct item) =>
      availableSlots.add(item);
  void removeFromAvailableSlots(AvailableTimeslotsDataStruct item) =>
      availableSlots.remove(item);
  void removeAtIndexFromAvailableSlots(int index) =>
      availableSlots.removeAt(index);
  void insertAtIndexInAvailableSlots(
          int index, AvailableTimeslotsDataStruct item) =>
      availableSlots.insert(index, item);
  void updateAvailableSlotsAtIndex(
          int index, Function(AvailableTimeslotsDataStruct) updateFn) =>
      availableSlots[index] = updateFn(availableSlots[index]);

  bool hasAvailChecked = false;

  bool noTimeSlots = false;

  bool showSelectAvail = false;

  bool showAvailList = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getSelectedDay] action in BookAppointment widget.
  DateTime? onLoadDay;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Custom Action - getSelectedDay] action in Calendar widget.
  DateTime? resultSelectDay;
  // Stores action output result for [Custom Action - getAvailableSlots] action in Button widget.
  List<AvailableTimeslotsDataStruct>? resultSlots;
  // Stores action output result for [Custom Action - getStartTimes] action in Button widget.
  List<String>? bookingStartTimes;
  // Stores action output result for [Custom Action - getEndTimes] action in Button widget.
  List<String>? bookingEndTimes;

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
