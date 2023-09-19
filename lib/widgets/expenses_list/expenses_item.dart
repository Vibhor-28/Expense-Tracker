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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 16),
        child: Column(
          children: [],
        ),),
    );
  }
}