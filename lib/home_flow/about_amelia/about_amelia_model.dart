import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'about_amelia_widget.dart' show AboutAmeliaWidget;
import 'package:flutter/material.dart';

class AboutAmeliaModel extends FlutterFlowModel<AboutAmeliaWidget> {
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
