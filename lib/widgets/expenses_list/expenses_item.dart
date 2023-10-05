import "package:flutter/material.dart";
import 'package:expense_tracker/models/expense_constructor.dart';
class ExpenseItem extends StatelessWidget
{
  const ExpenseItem (this.expenselist_item , {super.key});
  final Expense expenselist_item;
  @override
  Widget build(context)
  {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 16),
          child: Column(
            children: [
              Text(expenselist_item.title),
              const SizedBox(height: 8,),
              Row(
                children: [
                   Text('\$ ${expenselist_item.amount.toStringAsFixed(2)}'),
                   const Spacer(),
                   Row(
                    children: [
                     Icon(CategoryIcons[expenselist_item.category]),
                     const SizedBox(width: 8,),
                      Text(expenselist_item.formattedDate)
                    ],
                   )
    
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}