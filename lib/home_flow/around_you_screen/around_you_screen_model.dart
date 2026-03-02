import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'around_you_screen_widget.dart' show AroundYouScreenWidget;
import 'package:flutter/material.dart';

class AroundYouScreenModel extends FlutterFlowModel<AroundYouScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for ComenComponet dynamic component.
  late FlutterFlowDynamicModels<ComenComponetModel> comenComponetModels;

  @override
  void initState(BuildContext context) {
    comenComponetModels = FlutterFlowDynamicModels(() => ComenComponetModel());
  }

  @override
  void dispose() {
    comenComponetModels.dispose();
  }
}
