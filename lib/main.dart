import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var colortheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 47, 147, 62));
void main() {
  runApp(
     MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        scaffoldBackgroundColor: colortheme.onError,
        colorScheme: colortheme , 
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: colortheme.onPrimaryContainer,
          foregroundColor: colortheme.primaryContainer
        ),
        cardTheme: CardTheme().copyWith(
          margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
          color: colortheme.secondaryContainer
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colortheme.primary
          )
        )
      ),
      home:const  Expenses(),
    ),
  );
}
