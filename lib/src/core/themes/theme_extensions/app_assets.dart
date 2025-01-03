import 'package:flutter/material.dart';
import 'package:up_todo/gen/assets.gen.dart';

class AppAssets extends ThemeExtension<AppAssets> {
  final String notFoundImage;
  final String calendarFilled;
  final String calendarOutlined;
  final String clockFilled;
  final String clockOutlined;
  final String flag;
  final String homeFilled;
  final String homeOutlined;
  final String moon;
  final String profileFilled;
  final String profileOutlined;
  final String settingsFilled;
  final String settingsOutlined;
  final String sun;
  final String systemMode;
  final String tag;
  final String time;

  const AppAssets({
    required this.notFoundImage,
    required this.calendarFilled,
    required this.calendarOutlined,
    required this.clockFilled,
    required this.clockOutlined,
    required this.flag,
    required this.homeFilled,
    required this.homeOutlined,
    required this.moon,
    required this.profileFilled,
    required this.profileOutlined,
    required this.settingsFilled,
    required this.settingsOutlined,
    required this.sun,
    required this.systemMode,
    required this.tag,
    required this.time,
  });

  @override
  AppAssets copyWith({
    String? notFoundImage,
    String? calendarFilled,
    String? calendarOutlined,
    String? clockFilled,
    String? clockOutlined,
    String? flag,
    String? homeFilled,
    String? homeOutlined,
    String? moon,
    String? profileFilled,
    String? profileOutlined,
    String? settingsFilled,
    String? settingsOutlined,
    String? sun,
    String? systemMode,
    String? tag,
    String? time,
  }) {
    return AppAssets(
      notFoundImage: notFoundImage ?? this.notFoundImage,
      calendarFilled: calendarFilled ?? this.calendarFilled,
      calendarOutlined: calendarOutlined ?? this.calendarOutlined,
      clockFilled: clockFilled ?? this.clockFilled,
      clockOutlined: clockOutlined ?? this.clockOutlined,
      flag: flag ?? this.flag,
      homeFilled: homeFilled ?? this.homeFilled,
      homeOutlined: homeOutlined ?? this.homeOutlined,
      moon: moon ?? this.moon,
      profileFilled: profileFilled ?? this.profileFilled,
      profileOutlined: profileOutlined ?? this.profileOutlined,
      settingsFilled: settingsFilled ?? this.settingsFilled,
      settingsOutlined: settingsOutlined ?? this.settingsOutlined,
      sun: sun ?? this.sun,
      systemMode: systemMode ?? this.systemMode,
      tag: tag ?? this.tag,
      time: time ?? this.time,
    );
  }

  @override
  AppAssets lerp(ThemeExtension<AppAssets>? other, double t) {
    if (other is! AppAssets) return this;

    return AppAssets(
      notFoundImage: other.notFoundImage,
      calendarFilled: other.calendarFilled,
      calendarOutlined: other.calendarOutlined,
      clockFilled: other.clockFilled,
      clockOutlined: other.clockOutlined,
      flag: other.flag,
      homeFilled: other.homeFilled,
      homeOutlined: other.homeOutlined,
      moon: other.moon,
      profileFilled: other.profileFilled,
      profileOutlined: other.profileOutlined,
      settingsFilled: other.settingsFilled,
      settingsOutlined: other.settingsOutlined,
      sun: other.sun,
      systemMode: other.systemMode,
      tag: other.tag,
      time: other.time,
    );
  }

  static AppAssets light = AppAssets(
    notFoundImage: Assets.images.svg.light.notFoundWhite,
    calendarFilled: Assets.icons.svg.light.calendarFilled,
    calendarOutlined: Assets.icons.svg.light.calendarOutlined,
    clockFilled: Assets.icons.svg.light.clockFilled,
    clockOutlined: Assets.icons.svg.light.clockOutlined,
    flag: Assets.icons.svg.light.flag,
    homeFilled: Assets.icons.svg.light.homeFilled,
    homeOutlined: Assets.icons.svg.light.homeOutlined,
    moon: Assets.icons.svg.light.moonBlack,
    profileFilled: Assets.icons.svg.light.profileFilled,
    profileOutlined: Assets.icons.svg.light.profileOutlined,
    settingsFilled: Assets.icons.svg.light.settingsFilled,
    settingsOutlined: Assets.icons.svg.light.settingsOutlined,
    sun: Assets.icons.svg.light.sunBlack,
    systemMode: Assets.icons.svg.light.systemModeBlack,
    tag: Assets.icons.svg.light.tag,
    time: Assets.icons.svg.light.time,
  );

  static AppAssets dark = AppAssets(
    notFoundImage: Assets.images.svg.dark.notFoundBlack,
    calendarFilled: Assets.icons.svg.dark.calendarFilled,
    calendarOutlined: Assets.icons.svg.dark.calendarOutlined,
    clockFilled: Assets.icons.svg.dark.clockFilled,
    clockOutlined: Assets.icons.svg.dark.clockOutlined,
    flag: Assets.icons.svg.dark.flag,
    homeFilled: Assets.icons.svg.dark.homeFilled,
    homeOutlined: Assets.icons.svg.dark.homeOutlined,
    moon: Assets.icons.svg.dark.moonWhite,
    profileFilled: Assets.icons.svg.dark.profileFilled,
    profileOutlined: Assets.icons.svg.dark.profileOutlined,
    settingsFilled: Assets.icons.svg.dark.settingsFilled,
    settingsOutlined: Assets.icons.svg.dark.settingsOutlined,
    sun: Assets.icons.svg.dark.sunWhite,
    systemMode: Assets.icons.svg.dark.systemModeWhite,
    tag: Assets.icons.svg.dark.tag,
    time: Assets.icons.svg.dark.time,
  );
}
