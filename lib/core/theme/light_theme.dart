import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColorLight: Colors.white,
  primaryColorDark: Color.fromRGBO(240, 240, 240, 10),
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
      titleMedium: TextStyle(color: Colors.black, fontSize: 16), // 14 + 2
      titleSmall: TextStyle(color: Colors.green, fontSize: 14), // 12 + 2
      titleLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24), // 22 + 2
      headlineMedium: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold), // 16 + 2
      bodyLarge: TextStyle(color: Colors.green, fontSize: 18), // 16 + 2
      bodyMedium: TextStyle(color: Colors.black, fontSize: 14), // 12 + 2
      bodySmall: TextStyle(color: Color(0xFF939393), fontSize: 10)), // 8 + 2
  fontFamily: 'Tajawal',
  hoverColor: Color(0xFF09A223),
  listTileTheme: ListTileThemeData(
    textColor: Colors.black,
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Color(0xFF09A223),
  ),
  expansionTileTheme: ExpansionTileThemeData(
    iconColor: Color(0xFF09A223),
    textColor: Color(0xFF09A223),
  ),
  colorSchemeSeed: Color(0xFF09A223),
  useMaterial3: false,
);
