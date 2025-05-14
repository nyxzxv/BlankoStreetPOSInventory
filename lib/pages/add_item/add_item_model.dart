import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_item_widget.dart' show AddItemWidget;
import 'package:flutter/material.dart';

class AddItemModel extends FlutterFlowModel<AddItemWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for itemName widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameTextController;
  String? Function(BuildContext, String?)? itemNameTextControllerValidator;
  String? _itemNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required!';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email!';
    }
    return null;
  }

  // State field(s) for Price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'This field is required!';
    }

    return null;
  }

  // State field(s) for itemQuantity widget.
  FocusNode? itemQuantityFocusNode;
  TextEditingController? itemQuantityTextController;
  String? Function(BuildContext, String?)? itemQuantityTextControllerValidator;
  // State field(s) for itemDescription widget.
  FocusNode? itemDescriptionFocusNode;
  TextEditingController? itemDescriptionTextController;
  String? Function(BuildContext, String?)?
      itemDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (insertitemAPI)] action in addItemButton widget.
  ApiCallResponse? apiResult148;

  @override
  void initState(BuildContext context) {
    itemNameTextControllerValidator = _itemNameTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    itemNameFocusNode?.dispose();
    itemNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    itemQuantityFocusNode?.dispose();
    itemQuantityTextController?.dispose();

    itemDescriptionFocusNode?.dispose();
    itemDescriptionTextController?.dispose();
  }
}
