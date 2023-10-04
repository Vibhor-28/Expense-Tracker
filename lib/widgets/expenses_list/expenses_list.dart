import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_constructor.dart';

class Expense_list extends StatelessWidget {
  const Expense_list(this.expense_list, this.removeExpense, {super.key});
  final void Function(Expense expense) removeExpense;
  final List<Expense> expense_list;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expense_list.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expense_list[index]),
        onDismissed: (direction) {
          removeExpense(expense_list[index]);
        },
        child: ExpenseItem(expense_list[index]),
      ),
    );
  }
}
