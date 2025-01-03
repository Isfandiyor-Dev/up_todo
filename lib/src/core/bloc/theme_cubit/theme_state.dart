import 'package:flutter/material.dart';
import 'package:up_todo/src/core/enums/app_theme.dart';

import '../../enums/status_enum.dart';

class ThemeState {
  ThemeData? currentTheme;
  AppTheme? currentThemeEnum;
  Status status;

  ThemeState({
    this.currentTheme,
    this.currentThemeEnum,
    this.status = Status.INITIAL,
  });

  ThemeState copyWith({
    ThemeData? currentTheme,
    AppTheme? currentThemeEnum,
    Status? status,
  }) {
    return ThemeState(
      currentTheme: currentTheme ?? this.currentTheme,
      currentThemeEnum: currentThemeEnum ?? this.currentThemeEnum,
      status: status ?? this.status,
    );
  }
}
