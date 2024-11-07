import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  primaryColorLight: Color(0xFF252525),
  primaryColorDark: Color(0xFF151515),
    textTheme: TextTheme(
        titleMedium: TextStyle(color: Colors.white, fontSize: 16), // 14 + 2
        titleSmall: TextStyle(color: Colors.green, fontSize: 14), // 12 + 2
        titleLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24), // 22 + 2
        headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold), // 16 + 2
        bodyLarge: TextStyle(color: Colors.green, fontSize: 18), // 16 + 2
        bodyMedium: TextStyle(color: Colors.white, fontSize: 14), // 12 + 2
        bodySmall: TextStyle(color: Color(0xFF939393), fontSize: 10)),
    fontFamily: 'Tajawal',
    hoverColor: Color(0xFF09A223),
    listTileTheme: ListTileThemeData(
      textColor: Colors.white,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: Color(0xFF09A223),
    ),
    expansionTileTheme: ExpansionTileThemeData(
      iconColor: Color(0xFF09A223),
      textColor: Color(0xFF09A223),
    ),
    brightness: Brightness.dark,
    useMaterial3: false,
    );
