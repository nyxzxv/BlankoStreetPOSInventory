import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_item_component_widget.dart' show UpdateItemComponentWidget;
import 'package:flutter/material.dart';

class UpdateItemComponentModel
    extends FlutterFlowModel<UpdateItemComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for Quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateitemAPI)] action in Button widget.
  ApiCallResponse? apiResult733;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();
  }
}
