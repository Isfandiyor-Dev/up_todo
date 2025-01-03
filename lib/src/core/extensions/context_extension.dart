import 'package:flutter/material.dart';

import '../themes/theme_extensions/app_assets.dart';

extension AppIconsExtension on BuildContext {
  AppAssets get appAssets => Theme.of(this).extension<AppAssets>()!;
}
