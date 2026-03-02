import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'child_checkbox_list_component_widget.dart'
    show ChildCheckboxListComponentWidget;
import 'package:flutter/material.dart';

class ChildCheckboxListComponentModel
    extends FlutterFlowModel<ChildCheckboxListComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChildCheckboxListComponent widget.
  FormFieldController<List<String>>? childCheckboxListComponentValueController;
  List<String>? get childCheckboxListComponentValues =>
      childCheckboxListComponentValueController?.value;
  set childCheckboxListComponentValues(List<String>? v) =>
      childCheckboxListComponentValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
