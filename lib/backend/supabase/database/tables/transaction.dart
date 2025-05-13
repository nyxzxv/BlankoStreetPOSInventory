import '../database.dart';

class TransactionTable extends SupabaseTable<TransactionRow> {
  @override
  String get tableName => 'Transaction';

  @override
  TransactionRow createRow(Map<String, dynamic> data) => TransactionRow(data);
}

class TransactionRow extends SupabaseDataRow {
  TransactionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);

  double? get amountReceived => getField<double>('amount_received');
  set amountReceived(double? value) =>
      setField<double>('amount_received', value);

  double? get change => getField<double>('change');
  set change(double? value) => setField<double>('change', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);
}
