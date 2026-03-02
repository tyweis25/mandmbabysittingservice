import '/comoponts/article_contain/article_contain_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'artical_widget.dart' show ArticalWidget;
import 'package:flutter/material.dart';

class ArticalModel extends FlutterFlowModel<ArticalWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for ArticleContain dynamic component.
  late FlutterFlowDynamicModels<ArticleContainModel> articleContainModels;

  @override
  void initState(BuildContext context) {
    articleContainModels =
        FlutterFlowDynamicModels(() => ArticleContainModel());
  }

  @override
  void dispose() {
    articleContainModels.dispose();
  }
}
