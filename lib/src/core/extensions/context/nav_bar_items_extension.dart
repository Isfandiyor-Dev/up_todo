import 'package:flutter/material.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';

import '../../models/nav_bar_info.dart';

extension BottomNavBarItems on BuildContext {
  List<BottomNavBarItem> get bottomNavBarItems => [
        BottomNavBarItem(
          label: "Home",
          icon: appAssets.homeOutlined,
          activeIcon: appAssets.homeFilled,
        ),
        BottomNavBarItem(
          label: "Calendar",
          icon: appAssets.calendarOutlined,
          activeIcon: appAssets.calendarFilled,
        ),
        BottomNavBarItem(
          label: "Focus",
          icon: appAssets.clockOutlined,
          activeIcon: appAssets.clockFilled,
        ),
        BottomNavBarItem(
          label: "Settings",
          icon: appAssets.settingsOutlined,
          activeIcon: appAssets.settingsFilled,
        ),
      ];
}
