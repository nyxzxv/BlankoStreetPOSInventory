import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'payments_page_widget.dart' show PaymentsPageWidget;
import 'package:flutter/material.dart';

class PaymentsPageModel extends FlutterFlowModel<PaymentsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for amountReceived widget.
  FocusNode? amountReceivedFocusNode;
  TextEditingController? amountReceivedTextController;
  String? Function(BuildContext, String?)?
      amountReceivedTextControllerValidator;
  // State field(s) for paymentMethods widget.
  String? paymentMethodsValue;
  FormFieldController<String>? paymentMethodsValueController;
  // Stores action output result for [Backend Call - API (confirmposAPI)] action in paymentBtn widget.
  ApiCallResponse? paid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountReceivedFocusNode?.dispose();
    amountReceivedTextController?.dispose();
  }
}
