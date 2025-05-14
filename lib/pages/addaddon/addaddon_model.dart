import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'addaddon_widget.dart' show AddaddonWidget;
import 'package:flutter/material.dart';

class AddaddonModel extends FlutterFlowModel<AddaddonWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for addonName widget.
  FocusNode? addonNameFocusNode;
  TextEditingController? addonNameTextController;
  String? Function(BuildContext, String?)? addonNameTextControllerValidator;
  String? _addonNameTextControllerValidator(BuildContext context, String? val) {
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
  // Stores action output result for [Backend Call - API (insertaddonAPI)] action in addAddonButton widget.
  ApiCallResponse? apiResult148;

  @override
  void initState(BuildContext context) {
    addonNameTextControllerValidator = _addonNameTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    addonNameFocusNode?.dispose();
    addonNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    itemQuantityFocusNode?.dispose();
    itemQuantityTextController?.dispose();
  }
}
