import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_constructor.dart';

class Expense_list extends StatelessWidget {
  const Expense_list(this.expense_list ,{super.key});

  final List<Expense> expense_list;

  @override
  Widget build(context) {
    return ListView.builder(
       itemCount: expense_list.length,
       itemBuilder: (ctx,index)=> Text(expense_list[index].title),
       );
  }
}
