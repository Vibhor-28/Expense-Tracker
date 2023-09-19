import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_constructor.dart';

class Expense_list extends StatelessWidget {
  const Expense_list(this.expense_list ,{super.key});

  final List<Expense> expense_list;

  @override
  Widget build(context) {
    return ListView.builder(
       itemCount: expense_list.length,
       itemBuilder: (ctx,index)=> ExpenseItem(expense_list[index]),
       );
  }
}
