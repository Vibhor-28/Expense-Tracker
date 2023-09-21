import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense_constructor.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredexpenses = [
    Expense(
        amount: 16,
        title: "Pizza",
        date: DateTime.now(),
        category: Category.food),
    Expense(
        amount: 20,
        title: "Cinema",
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        amount: 7,
        title: "Auto",
        date: DateTime.now(),
        category: Category.travel)
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) => const NewExpense(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ) );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Text("The chart"),
          Expanded(
            child: Expense_list(_registeredexpenses),
          )
        ],
      ),
    );
  }
}
