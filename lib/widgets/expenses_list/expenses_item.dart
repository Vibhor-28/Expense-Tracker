import "package:flutter/material.dart";
import 'package:expense_tracker/models/expense_constructor.dart';
class ExpenseItem extends StatelessWidget
{
  const ExpenseItem (this.expenselist_item , {super.key});
  final Expense expenselist_item;
  @override
  Widget build(context)
  {
    return const Card(
      child: Text("Hello world"),
    );
  }
}