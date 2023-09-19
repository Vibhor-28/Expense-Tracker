import "package:flutter/material.dart";
import 'package:expense_tracker/models/expense_constructor.dart';
class ExpenseItem extends StatelessWidget
{
  const ExpenseItem (this.expenselist_item , {super.key});
  final Expense expenselist_item;
  @override
  Widget build(context)
  {
    return  Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 16),
        child: Column(
          children: [
            Text(expenselist_item.title),
            const SizedBox(height: 4,),
            const Row(
              children: [
                 Text('\& &{expenselist_item.amount.toStringAsFixed(2)}')
              ],
            )
          ],
        ),
      ),
    );
  }
}