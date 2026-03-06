import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_child_widget.dart' show AddChildWidget;
import 'package:flutter/material.dart';

class AddChildModel extends FlutterFlowModel<AddChildWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChildName widget.
  FocusNode? childNameFocusNode;
  TextEditingController? childNameTextController;
  String? Function(BuildContext, String?)? childNameTextControllerValidator;
  String? _childNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Child Name is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for Age widget.
  String? ageValue;
  FormFieldController<String>? ageValueController;
  // State field(s) for ChildLikes widget.
  FormFieldController<List<String>>? childLikesValueController;
  List<String>? get childLikesValues => childLikesValueController?.value;
  set childLikesValues(List<String>? v) => childLikesValueController?.value = v;

  // State field(s) for ChildNotes widget.
  FocusNode? childNotesFocusNode;
  TextEditingController? childNotesTextController;
  String? Function(BuildContext, String?)? childNotesTextControllerValidator;

  @override
  void initState(BuildContext context) {
    childNameTextControllerValidator = _childNameTextControllerValidator;
  }

  @override
  void dispose() {
    childNameFocusNode?.dispose();
    childNameTextController?.dispose();

    childNotesFocusNode?.dispose();
    childNotesTextController?.dispose();
  }
}
