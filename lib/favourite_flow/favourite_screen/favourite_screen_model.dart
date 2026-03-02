import '/comoponts/appbar/appbar_widget.dart';
import '/comoponts/comen_componet/comen_componet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'favourite_screen_widget.dart' show FavouriteScreenWidget;
import 'package:flutter/material.dart';

class FavouriteScreenModel extends FlutterFlowModel<FavouriteScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Appbar component.
  late AppbarModel appbarModel;
  // Models for ComenComponet dynamic component.
  late FlutterFlowDynamicModels<ComenComponetModel> comenComponetModels;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
    comenComponetModels = FlutterFlowDynamicModels(() => ComenComponetModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    comenComponetModels.dispose();
  }
}
