import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'security_screen_widget.dart' show SecurityScreenWidget;
import 'package:flutter/material.dart';

class SecurityScreenModel extends FlutterFlowModel<SecurityScreenWidget> {
  ///  Local state fields for this page.

  bool faceid = false;

  bool notify = false;

  ///  State fields for stateful widgets in this page.

  // Model for Appbar component.
  late AppbarModel appbarModel;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
  }
}
