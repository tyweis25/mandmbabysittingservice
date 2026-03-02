import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'children_checkbox_list_component_copy_model.dart';
export 'children_checkbox_list_component_copy_model.dart';

class ChildrenCheckboxListComponentCopyWidget extends StatefulWidget {
  const ChildrenCheckboxListComponentCopyWidget({
    super.key,
    required this.childCheckboxList,
  });

  final List<String>? childCheckboxList;

  @override
  State<ChildrenCheckboxListComponentCopyWidget> createState() =>
      _ChildrenCheckboxListComponentCopyWidgetState();
}

class _ChildrenCheckboxListComponentCopyWidgetState
    extends State<ChildrenCheckboxListComponentCopyWidget> {
  late ChildrenCheckboxListComponentCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ChildrenCheckboxListComponentCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _model.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: wrapWithModel(
        model: _model.childrenCheckboxListComponentCopyModel,
        updateCallback: () => safeSetState(() {}),
        child: ChildrenCheckboxListComponentCopyWidget(
          childCheckboxList: widget.childCheckboxList!,
        ),
      ),
    );
  }
}
