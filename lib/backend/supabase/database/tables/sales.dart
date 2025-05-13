import '../database.dart';

class SalesTable extends SupabaseTable<SalesRow> {
  @override
  String get tableName => 'Sales';

  @override
  SalesRow createRow(Map<String, dynamic> data) => SalesRow(data);
}

class SalesRow extends SupabaseDataRow {
  SalesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SalesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  int? get transactionId => getField<int>('transaction_id');
  set transactionId(int? value) => setField<int>('transaction_id', value);

  String? get itemType => getField<String>('item_type');
  set itemType(String? value) => setField<String>('item_type', value);

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
