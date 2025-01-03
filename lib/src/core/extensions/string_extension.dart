import 'package:up_todo/src/core/constants/constants.dart';
import 'package:up_todo/src/core/enums/app_theme.dart';

extension StringExtension on String {
  AppTheme getAppThemeEnum() {
    switch (this) {
      case Constants.DARK:
        return AppTheme.DARK;
      case Constants.LIGHT:
        return AppTheme.LIGHT;
      case Constants.SYSTEM:
        return AppTheme.SYSTEM;
      default:
        return AppTheme.SYSTEM;
    }
  }
}
