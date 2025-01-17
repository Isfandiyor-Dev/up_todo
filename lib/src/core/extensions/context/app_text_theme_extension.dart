import 'package:flutter/material.dart';

extension AppTextThemeExtension on BuildContext { 
  TextTheme get textTheme => Theme.of(this).textTheme;
}
