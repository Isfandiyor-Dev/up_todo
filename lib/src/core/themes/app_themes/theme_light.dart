import 'package:flutter/material.dart';

import '../text_themes/app_text_styles.dart';
import '../theme_extensions/app_assets.dart';

class ThemeLight {
  static final ThemeLight instance = ThemeLight._init();

  ThemeLight._init();
//0xffFAFAFA -> scaffold color
  ThemeData get theme => ThemeData(
        extensions: [AppAssets.light],
        scaffoldBackgroundColor: Color(0xffF0F0F0),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffF5F5F5),
        ),
        appBarTheme: AppBarTheme(color: Colors.transparent),
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: const Color(0xFF8875FF),
          onPrimary: Colors.white,
          secondary: Colors.grey.shade300, //
          onSecondary: Colors.black38, //
          secondaryFixed: Colors.grey.shade500,
          error: const Color(0xFFFF4949),
          onError: Colors.white.withValues(alpha: 0.7),
          surface: Colors.grey.shade400, //
          onSurface: Colors.black38, //
          outline: const Color(0xFF8875FF),
          outlineVariant: const Color(0xFF979797),
          primaryContainer: const Color(0xFF272727).withValues(alpha: 0.5), //
          onPrimaryContainer: Colors.white, //
          secondaryContainer: Colors.grey.shade700, //
          onSecondaryContainer: Colors.white, //
          tertiary: const Color(0x95000000),
        ),
        iconTheme: IconThemeData(color: const Color(0xFF464646)),
        primaryIconTheme: IconThemeData(color: const Color(0xFF464646)),
        textTheme: AppTextStyles.getTextTheme(Colors.black87),
      );
}
