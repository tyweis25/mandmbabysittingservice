import '/dailogs/chat_empty/chat_empty_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_copy_widget.dart' show ChatCopyWidget;
import 'package:flutter/material.dart';

class ChatCopyModel extends FlutterFlowModel<ChatCopyWidget> {
  ///  Local state fields for this component.

  bool chatLsit = false;

  ///  State fields for stateful widgets in this component.

  // Model for ChatEmpty component.
  late ChatEmptyModel chatEmptyModel;

  @override
  void initState(BuildContext context) {
    chatEmptyModel = createModel(context, () => ChatEmptyModel());
  }

  @override
  void dispose() {
    chatEmptyModel.dispose();
  }
}
