import 'package:flutter/material.dart';

import '../theme_extensions/app_assets.dart';

class ThemeLight {
  static final ThemeLight instance = ThemeLight._init();

  ThemeLight._init();

  ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        extensions: [AppAssets.light],
      );
}
