import 'package:flutter/material.dart';
import '../theme_extensions/app_assets.dart';

class ThemeDark {
  static final ThemeDark instance = ThemeDark._init();

  ThemeDark._init();

  ThemeData get theme => ThemeData(
        brightness: Brightness.dark,
        extensions: [AppAssets.dark],
      );
}
