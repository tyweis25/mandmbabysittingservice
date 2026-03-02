import '/flutter_flow/flutter_flow_util.dart';
import 'chat_detail_screen_copy_widget.dart' show ChatDetailScreenCopyWidget;
import 'package:flutter/material.dart';

class ChatDetailScreenCopyModel
    extends FlutterFlowModel<ChatDetailScreenCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for chat_text widget.
  FocusNode? chatTextFocusNode;
  TextEditingController? chatTextTextController;
  String? Function(BuildContext, String?)? chatTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    chatTextFocusNode?.dispose();
    chatTextTextController?.dispose();
  }
}
