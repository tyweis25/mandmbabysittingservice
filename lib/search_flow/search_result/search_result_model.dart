import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_result_widget.dart' show SearchResultWidget;
import 'package:flutter/material.dart';

class SearchResultModel extends FlutterFlowModel<SearchResultWidget> {
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
