import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'popular_screen_widget.dart' show PopularScreenWidget;
import 'package:flutter/material.dart';

class PopularScreenModel extends FlutterFlowModel<PopularScreenWidget> {
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
