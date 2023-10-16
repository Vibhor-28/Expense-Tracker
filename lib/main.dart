import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var colortheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 47, 147, 62));
var darkColortheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 5, 99, 125) , brightness: Brightness.dark);
void main() {
  runApp(
     MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: darkColortheme,
         cardTheme: CardTheme().copyWith(
          margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
          color: darkColortheme.secondaryContainer
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkColortheme.primaryContainer,
            foregroundColor: darkColortheme.onPrimaryContainer
          )
        )
      ),
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
            backgroundColor: colortheme.primaryContainer,
            foregroundColor: colortheme.onPrimaryContainer
          )
        )
      ),
      themeMode: ThemeMode.system,
      home:const  Expenses(),
    ),
  );
}
