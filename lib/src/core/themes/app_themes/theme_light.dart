import 'package:flutter/material.dart';

import '../text_themes/app_text_styles.dart';
import '../theme_extensions/app_assets.dart';

class ThemeLight {
  static final ThemeLight instance = ThemeLight._init();

  ThemeLight._init();

  ThemeData get theme => ThemeData(
        brightness: Brightness.light,
        extensions: [AppAssets.light],
        scaffoldBackgroundColor: Colors.grey.shade200,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffF5F6F7),
        ),
        colorSchemeSeed: const Color(0xFF8875FF),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: const Color(0xFF8875FF),
          onPrimary: Colors.white,
          secondary: Colors.grey.shade300, //
          onSecondary: Colors.black38, //
          error: const Color(0xFFFF4949),
          onError: Colors.white.withOpacity(0.7),
          surface: Colors.grey.shade400, //
          onSurface: Colors.black38, //
          outline: const Color(0xFF8875FF),
          outlineVariant: const Color(0xFF979797),
          primaryContainer: const Color(0xFF272727).withOpacity(0.5), //
          onPrimaryContainer: Colors.white, //
          secondaryContainer: Colors.grey.shade700, //
          onSecondaryContainer: Colors.white, //
        ),
        textTheme: AppTextStyles.getTextTheme(Colors.black87),
      );
}
