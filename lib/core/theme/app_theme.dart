import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  textTheme: TextTheme(
      titleMedium: TextStyle(color: Colors.black, fontSize: 14),
      titleSmall: TextStyle(color: Colors.green, fontSize: 12),
      titleLarge: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
      headlineMedium: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: Colors.green, fontSize: 12),
      bodyMedium: TextStyle(color: Colors.black, fontSize: 12),
      bodySmall: TextStyle(color: Color(0xFF939393), fontSize: 8)),
  fontFamily: 'Tajawal',
  hoverColor: Color(0xFF09A223),
  listTileTheme: ListTileThemeData(
    textColor: Colors.black,
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Color(0xFF09A223),
  ),
  expansionTileTheme: ExpansionTileThemeData(
    iconColor:     Color(0xFF09A223),
    textColor:     Color(0xFF09A223),
  ),

  colorSchemeSeed:     Color(0xFF09A223),
  useMaterial3: false,
);
