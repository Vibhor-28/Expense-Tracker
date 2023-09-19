import 'package:uuid/uuid.dart';

class Expense {
  const Expense(this.id,this.amount,this.title,this.date);
  
  final String id;
  final double amount;
  final String title;
  final DateTime date;
}
