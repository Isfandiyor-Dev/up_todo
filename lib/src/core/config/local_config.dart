import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/src/core/enums/app_theme.dart';

import '../constants/constants.dart';

class LocalConfig {
  final SharedPreferences _preferences;

  LocalConfig({required SharedPreferences preferences})
      : _preferences = preferences;

  //Todo: APP THEME
  ///[setAppThemeData] function to change the app theme
  Future<void> setAppThemeData(AppTheme appTheme) async {
    _preferences.setString(Constants.THEME, appTheme.name);
  }

  ///[getAppThemeData] function to change the app theme
  String? getAppThemeData() {
    return _preferences.getString(Constants.THEME);
  }
}
