import '/flutter_flow/flutter_flow_util.dart';
import 'addaddon_p_o_s_widget.dart' show AddaddonPOSWidget;
import 'package:flutter/material.dart';

class AddaddonPOSModel extends FlutterFlowModel<AddaddonPOSWidget> {
  ///  Local state fields for this component.

  List<dynamic> prodId = [];
  void addToProdId(dynamic item) => prodId.add(item);
  void removeFromProdId(dynamic item) => prodId.remove(item);
  void removeAtIndexFromProdId(int index) => prodId.removeAt(index);
  void insertAtIndexInProdId(int index, dynamic item) =>
      prodId.insert(index, item);
  void updateProdIdAtIndex(int index, Function(dynamic) updateFn) =>
      prodId[index] = updateFn(prodId[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for searchProduct widget.
  FocusNode? searchProductFocusNode;
  TextEditingController? searchProductTextController;
  String? Function(BuildContext, String?)? searchProductTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchProductFocusNode?.dispose();
    searchProductTextController?.dispose();
  }
}
