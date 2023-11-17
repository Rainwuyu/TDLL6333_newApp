import '../database.dart';

class GoalsTable extends SupabaseTable<GoalsRow> {
  @override
  String get tableName => 'Goals';

  @override
  GoalsRow createRow(Map<String, dynamic> data) => GoalsRow(data);
}

class GoalsRow extends SupabaseDataRow {
  GoalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GoalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get dueDay => getField<DateTime>('dueDay');
  set dueDay(DateTime? value) => setField<DateTime>('dueDay', value);

  String? get money => getField<String>('money');
  set money(String? value) => setField<String>('money', value);

  String? get imageUrl => getField<String>('imageUrl');
  set imageUrl(String? value) => setField<String>('imageUrl', value);
}
