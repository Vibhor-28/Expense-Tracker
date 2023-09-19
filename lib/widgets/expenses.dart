import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
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

  @override
  Widget build(context) {
    return Scaffold(
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
