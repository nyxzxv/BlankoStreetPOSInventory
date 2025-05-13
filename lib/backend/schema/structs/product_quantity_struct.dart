// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductQuantityStruct extends BaseStruct {
  ProductQuantityStruct({
    int? quantity,
  }) : _quantity = quantity;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static ProductQuantityStruct fromMap(Map<String, dynamic> data) =>
      ProductQuantityStruct(
        quantity: castToType<int>(data['Quantity']),
      );

  static ProductQuantityStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductQuantityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductQuantityStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductQuantityStruct(
        quantity: deserializeParam(
          data['Quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductQuantityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductQuantityStruct && quantity == other.quantity;
  }

  @override
  int get hashCode => const ListEquality().hash([quantity]);
}

ProductQuantityStruct createProductQuantityStruct({
  int? quantity,
}) =>
    ProductQuantityStruct(
      quantity: quantity,
    );
