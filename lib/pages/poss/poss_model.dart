import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'poss_widget.dart' show PossWidget;
import 'package:flutter/material.dart';

class PossModel extends FlutterFlowModel<PossWidget> {
  ///  Local state fields for this page.

  List<dynamic> prodId = [];
  void addToProdId(dynamic item) => prodId.add(item);
  void removeFromProdId(dynamic item) => prodId.remove(item);
  void removeAtIndexFromProdId(int index) => prodId.removeAt(index);
  void insertAtIndexInProdId(int index, dynamic item) =>
      prodId.insert(index, item);
  void updateProdIdAtIndex(int index, Function(dynamic) updateFn) =>
      prodId[index] = updateFn(prodId[index]);

  List<dynamic> addonId = [];
  void addToAddonId(dynamic item) => addonId.add(item);
  void removeFromAddonId(dynamic item) => addonId.remove(item);
  void removeAtIndexFromAddonId(int index) => addonId.removeAt(index);
  void insertAtIndexInAddonId(int index, dynamic item) =>
      addonId.insert(index, item);
  void updateAddonIdAtIndex(int index, Function(dynamic) updateFn) =>
      addonId[index] = updateFn(addonId[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Bottom Sheet - additemPOS] action in addProductBtn widget.
  List<dynamic>? prodResult;
  // Stores action output result for [Backend Call - API (addtocartAPI)] action in addProductBtn widget.
  ApiCallResponse? apiResultpce;
  // Stores action output result for [Bottom Sheet - addaddonPOS] action in addonsBtn widget.
  List<dynamic>? addonRes;
  // Stores action output result for [Backend Call - API (posAPI)] action in paymentBtn widget.
  ApiCallResponse? posAPIres;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
