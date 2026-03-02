import '/comoponts/article_contain/article_contain_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'article_screen_widget.dart' show ArticleScreenWidget;
import 'package:flutter/material.dart';

class ArticleScreenModel extends FlutterFlowModel<ArticleScreenWidget> {
  ///  State fields for stateful widgets in this page.

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
