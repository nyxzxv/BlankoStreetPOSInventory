import '../database.dart';

class AddonsTable extends SupabaseTable<AddonsRow> {
  @override
  String get tableName => 'Addons';

  @override
  AddonsRow createRow(Map<String, dynamic> data) => AddonsRow(data);
}

class AddonsRow extends SupabaseDataRow {
  AddonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AddonsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get addonName => getField<String>('addon_name')!;
  set addonName(String value) => setField<String>('addon_name', value);

  double get price => getField<double>('price')!;
  set price(double value) => setField<double>('price', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);
}
