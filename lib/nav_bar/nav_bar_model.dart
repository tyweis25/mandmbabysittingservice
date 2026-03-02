import '/bottom_flow/artical/artical_widget.dart';
import '/bottom_flow/chat/chat_widget.dart';
import '/bottom_flow/home/home_widget.dart';
import '/bottom_flow/profile/profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar_widget.dart' show NavBarWidget;
import 'package:flutter/material.dart';

class NavBarModel extends FlutterFlowModel<NavBarWidget> {
  ///  Local state fields for this page.

  bool chatlist = false;

  ///  State fields for stateful widgets in this page.

  // Model for Home component.
  late HomeModel homeModel;
  // Model for Artical component.
  late ArticalModel articalModel;
  // Model for Chat component.
  late ChatModel chatModel;
  // Model for Profile component.
  late ProfileModel profileModel;

  @override
  void initState(BuildContext context) {
    homeModel = createModel(context, () => HomeModel());
    articalModel = createModel(context, () => ArticalModel());
    chatModel = createModel(context, () => ChatModel());
    profileModel = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    homeModel.dispose();
    articalModel.dispose();
    chatModel.dispose();
    profileModel.dispose();
  }
}
