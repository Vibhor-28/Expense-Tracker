import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

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
    return const Scaffold(
      body: Column(
        children: [
          Text("The chart"), 
          Text("expenses")],
      ),
    );
  }
}
