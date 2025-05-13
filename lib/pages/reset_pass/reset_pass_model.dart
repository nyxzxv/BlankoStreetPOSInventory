import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reset_pass_widget.dart' show ResetPassWidget;
import 'package:flutter/material.dart';

class ResetPassModel extends FlutterFlowModel<ResetPassWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // Stores action output result for [Custom Action - resetPassword] action in resetPassBtn widget.
  String? error;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();
  }
}
