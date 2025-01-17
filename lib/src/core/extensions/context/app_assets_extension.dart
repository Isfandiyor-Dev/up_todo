import 'package:flutter/material.dart';

import '../../themes/theme_extensions/app_assets.dart';

extension AppAssetsExtension on BuildContext {
  AppAssets get appAssets => Theme.of(this).extension<AppAssets>()!;
}
