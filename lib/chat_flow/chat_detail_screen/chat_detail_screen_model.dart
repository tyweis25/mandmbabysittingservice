import '/comoponts/appbar/appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_detail_screen_widget.dart' show ChatDetailScreenWidget;
import 'package:flutter/material.dart';

class ChatDetailScreenModel extends FlutterFlowModel<ChatDetailScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Appbar component.
  late AppbarModel appbarModel;
  // State field(s) for chat_text widget.
  FocusNode? chatTextFocusNode;
  TextEditingController? chatTextTextController;
  String? Function(BuildContext, String?)? chatTextTextControllerValidator;

  @override
  void initState(BuildContext context) {
    appbarModel = createModel(context, () => AppbarModel());
  }

  @override
  void dispose() {
    appbarModel.dispose();
    chatTextFocusNode?.dispose();
    chatTextTextController?.dispose();
  }
}
