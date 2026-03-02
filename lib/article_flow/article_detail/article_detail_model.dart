import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'article_detail_widget.dart' show ArticleDetailWidget;
import 'package:flutter/material.dart';

class ArticleDetailModel extends FlutterFlowModel<ArticleDetailWidget> {
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
