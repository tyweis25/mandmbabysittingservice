import '/comoponts/article_contain/article_contain_widget.dart';
import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:flutter/material.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for ComenComponet dynamic component.
  late FlutterFlowDynamicModels<ComenComponetModel> comenComponetModels1;
  // Models for ComenComponet dynamic component.
  late FlutterFlowDynamicModels<ComenComponetModel> comenComponetModels2;
  // Models for ArticleContain dynamic component.
  late FlutterFlowDynamicModels<ArticleContainModel> articleContainModels;

  @override
  void initState(BuildContext context) {
    comenComponetModels1 = FlutterFlowDynamicModels(() => ComenComponetModel());
    comenComponetModels2 = FlutterFlowDynamicModels(() => ComenComponetModel());
    articleContainModels =
        FlutterFlowDynamicModels(() => ArticleContainModel());
  }

  @override
  void dispose() {
    comenComponetModels1.dispose();
    comenComponetModels2.dispose();
    articleContainModels.dispose();
  }
}
