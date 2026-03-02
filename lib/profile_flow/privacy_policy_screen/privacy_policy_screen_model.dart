import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'privacy_policy_screen_widget.dart' show PrivacyPolicyScreenWidget;
import 'package:flutter/material.dart';

class PrivacyPolicyScreenModel
    extends FlutterFlowModel<PrivacyPolicyScreenWidget> {
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
