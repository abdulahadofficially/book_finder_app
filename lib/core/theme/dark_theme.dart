import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    color: Colors.black,
    titleTextStyle:
        TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
    titleSmall: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
  ),
  cardTheme: const CardTheme(shadowColor: Colors.white),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
  ),
);
