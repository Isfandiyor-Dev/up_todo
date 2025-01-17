import 'package:flutter/material.dart';
import '../text_themes/app_text_styles.dart';
import '../theme_extensions/app_assets.dart';

class ThemeDark {
  static final ThemeDark instance = ThemeDark._init();

  ThemeDark._init();

  ThemeData get theme => ThemeData(
        brightness: Brightness.dark,
        extensions: [AppAssets.dark],
        fontFamily: 'Lato',
        scaffoldBackgroundColor: const Color(0xff121212),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF363636),
        ),
        colorSchemeSeed: const Color(0xFF8875FF),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: const Color(0xFF8875FF),
          onPrimary: Colors.white,
          secondary: const Color(0xFF363636),
          onSecondary: Colors.white.withOpacity(0.87),
          error: const Color(0xFFFF4949),
          onError: Colors.white.withOpacity(0.7),
          surface: const Color(0xFF363636),
          onSurface: Colors.white.withOpacity(0.87),
          outline: const Color(0xFF8875FF),
          outlineVariant: const Color(0xFF979797),
          primaryContainer: const Color(0xFF272727),
          onPrimaryContainer: Colors.white,
          secondaryContainer: const Color(0xFF979797),
          onSecondaryContainer: Colors.white,
        ),
        textTheme: AppTextStyles.getTextTheme(Colors.white.withOpacity(0.87)),
      );
}
