import 'package:flutter/material.dart';

class AppTextStyles {
  static TextTheme getTextTheme(Color color) => TextTheme(
        //DISPLAY
        displayLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        displayMedium: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        displaySmall: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: color,
        ),

        //HEADLINE
        headlineLarge: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        headlineSmall: TextStyle(
          fontSize: 20,
          color: color,
        ),

        //TITLE
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: color,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          color: color,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          color: color,
        ),

        //BODY
        bodyLarge: TextStyle(fontSize: 16, color: color),
        bodyMedium: TextStyle(fontSize: 14, color: color),
        bodySmall: TextStyle(fontSize: 12, color: color),

        //LABEL
        labelLarge: TextStyle(fontSize: 16, color: color),
        labelMedium: TextStyle(fontSize: 14, color: color),
        labelSmall: TextStyle(fontSize: 12, color: color),
      );
}
