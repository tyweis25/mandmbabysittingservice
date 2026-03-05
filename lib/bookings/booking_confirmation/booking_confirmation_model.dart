import '/backend/backend.dart';
import '/comoponts/appbar/appbar_widget.dart';
import '/components/child_checkbox_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'booking_confirmation_widget.dart' show BookingConfirmationWidget;
import 'package:flutter/material.dart';

class BookingConfirmationModel
    extends FlutterFlowModel<BookingConfirmationWidget> {
  ///  Local state fields for this page.

  bool childrenCheckboxError = true;

  bool isChildSelectedError = false;

  List<String> endTimeList = [];
  void addToEndTimeList(String item) => endTimeList.add(item);
  void removeFromEndTimeList(String item) => endTimeList.remove(item);
  void removeAtIndexFromEndTimeList(int index) => endTimeList.removeAt(index);
  void insertAtIndexInEndTimeList(int index, String item) =>
      endTimeList.insert(index, item);
  void updateEndTimeListAtIndex(int index, Function(String) updateFn) =>
      endTimeList[index] = updateFn(endTimeList[index]);

  int? totalNumChildren;

  double? totalNumHours;

  double? perHour;

  double? totalBookingPrice;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - getChildCheckboxList] action in BookingConfirmation widget.
  List<String>? childList;
  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for StartTime widget.
  String? startTimeValue;
  FormFieldController<String>? startTimeValueController;
  // Stores action output result for [Custom Action - getEndTimes] action in StartTime widget.
  List<String>? resultEndTimes;
  // State field(s) for EndTime widget.
  String? endTimeValue;
  FormFieldController<String>? endTimeValueController;
  // Stores action output result for [Custom Action - getNumHours] action in EndTime widget.
  double? outpuHrs;
  // Stores action output result for [Custom Action - getTotalPrice] action in EndTime widget.
  double? outputTotal;
  // Model for ChildCheckboxListComponent component.
  late ChildCheckboxListComponentModel childCheckboxListComponentModel;
  // State field(s) for ParentNotes widget.
  FocusNode? parentNotesFocusNode;
  TextEditingController? parentNotesTextController;
  String? Function(BuildContext, String?)? parentNotesTextControllerValidator;
  // Stores action output result for [Custom Action - generateRandomString] action in ConfirmBookingBtn widget.
  String? bookingId;
  // Stores action output result for [Custom Action - getNumSelectedChildren] action in ConfirmBookingBtn widget.
  int? numChildren;
  // Stores action output result for [Custom Action - getNumHours] action in ConfirmBookingBtn widget.
  double? numHours;
  // Stores action output result for [Custom Action - getTotalPrice] action in ConfirmBookingBtn widget.
  double? totalPrice;
  // Stores action output result for [Custom Action - getStartTime] action in ConfirmBookingBtn widget.
  DateTime? startDt;
  // Stores action output result for [Custom Action - getEndTime] action in ConfirmBookingBtn widget.
  DateTime? endDt;
  // Stores action output result for [Backend Call - Create Document] action in ConfirmBookingBtn widget.
  BookingsRecord? bookingRef;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    childCheckboxListComponentModel =
        createModel(context, () => ChildCheckboxListComponentModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    childCheckboxListComponentModel.dispose();
    parentNotesFocusNode?.dispose();
    parentNotesTextController?.dispose();
  }
}
