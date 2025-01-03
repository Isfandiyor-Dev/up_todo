import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_state.dart';
import 'package:up_todo/src/core/enums/app_theme.dart';
import 'package:up_todo/src/core/extensions/string_extension.dart';
import 'package:up_todo/src/core/themes/app_themes/theme_dark.dart';
import 'package:up_todo/src/core/themes/app_themes/theme_light.dart';

import '../../config/local_config.dart';
import '../../enums/status_enum.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final LocalConfig localConfig;
  ThemeCubit({
    required this.localConfig,
  }) : super(ThemeState());

  void loadCurrentTheme() {
    emit(state.copyWith(status: Status.LOADING));

    final savedThemeStr = localConfig.getAppThemeData();

    if (savedThemeStr != null) {
      final themeEnum = savedThemeStr.getAppThemeEnum();

      if (themeEnum == AppTheme.SYSTEM) {
        var brightness =
            SchedulerBinding.instance.platformDispatcher.platformBrightness;
        emit(
          state.copyWith(
            currentThemeEnum: themeEnum,
            currentTheme: brightness == Brightness.dark
                ? ThemeDark.instance.theme
                : ThemeLight.instance.theme,
          ),
        );
      } else {
        emit(state.copyWith(
          currentThemeEnum: themeEnum,
          currentTheme: themeEnum == AppTheme.DARK
              ? ThemeDark.instance.theme
              : ThemeLight.instance.theme,
        ));
      }
    } else {
      var brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      emit(
        state.copyWith(
          currentThemeEnum: brightness == Brightness.dark
              ? AppTheme.DARK
              : brightness == Brightness.light
                  ? AppTheme.LIGHT
                  : AppTheme.SYSTEM,
          currentTheme: brightness == Brightness.dark
              ? ThemeDark.instance.theme
              : ThemeLight.instance.theme,
        ),
      );
    }
    emit(state.copyWith(status: Status.SUCCESS));
  }

  Future<void> setCurrentTheme(AppTheme themeEnum) async {
    emit(state.copyWith(status: Status.LOADING));

    await localConfig.setAppThemeData(themeEnum);
    if (themeEnum == AppTheme.SYSTEM) {
      var brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      emit(state.copyWith(
        currentThemeEnum: themeEnum,
        currentTheme: brightness == Brightness.dark
            ? ThemeDark.instance.theme
            : ThemeLight.instance.theme,
      ));
    } else {
      emit(state.copyWith(
        currentThemeEnum: themeEnum,
        currentTheme: themeEnum == AppTheme.DARK
            ? ThemeDark.instance.theme
            : ThemeLight.instance.theme,
      ));
    }

    emit(state.copyWith(status: Status.SUCCESS));
  }
}
