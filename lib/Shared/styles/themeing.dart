import 'package:flutter/material.dart';

import 'colors.dart';

class ApplicationTheme {
  static ThemeData light = ThemeData(
      textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: white,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: blue,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 20,
            color: white,
            fontWeight: FontWeight.bold,
          )));
}
