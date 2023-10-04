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
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(addExpense),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
  }

  void addExpense(Expense expense) {
    setState(() {
      _registeredexpenses.add(expense);
    });
  }

  void removeExpense(Expense expense) {
    final index = _registeredexpenses.indexOf(expense);
    setState(() {
      _registeredexpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text("Expense deleted"),
        action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              setState(() {
                _registeredexpenses.insert(index, expense);
              });
            }),
      ),
    );
  }

  @override
  Widget build(context) {
    Widget mainContent = const Center(child: Text("The cart is empty"));
    if (_registeredexpenses.isNotEmpty) {
      mainContent = Expense_list(_registeredexpenses, removeExpense);
    }
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
            child: mainContent,
          )
        ],
      ),
    );
  }
}
