import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'child_checkbox_list_component_model.dart';
export 'child_checkbox_list_component_model.dart';

class ChildCheckboxListComponentWidget extends StatefulWidget {
  const ChildCheckboxListComponentWidget({
    super.key,
    required this.childList,
    required this.onSelectChild,
  });

  final List<String>? childList;
  final Future Function()? onSelectChild;

  @override
  State<ChildCheckboxListComponentWidget> createState() =>
      _ChildCheckboxListComponentWidgetState();
}

class _ChildCheckboxListComponentWidgetState
    extends State<ChildCheckboxListComponentWidget> {
  late ChildCheckboxListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChildCheckboxListComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowCheckboxGroup(
      options: widget.childList!.toList(),
      onChanged: (val) =>
          safeSetState(() => _model.childCheckboxListComponentValues = val),
      controller: _model.childCheckboxListComponentValueController ??=
          FormFieldController<List<String>>(
        List.from([FFAppState().selectChildrenCheckbox.firstOrNull!] ?? []),
      ),
      activeColor: FlutterFlowTheme.of(context).primary,
      checkColor: FlutterFlowTheme.of(context).info,
      checkboxBorderColor: FlutterFlowTheme.of(context).secondaryText,
      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'SF Pro Display',
            letterSpacing: 0.0,
          ),
      checkboxBorderRadius: BorderRadius.circular(4.0),
      initialized: _model.childCheckboxListComponentValues != null,
    );
  }
}
