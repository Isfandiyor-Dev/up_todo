import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_cubit.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_state.dart';
import 'package:up_todo/src/core/enums/app_theme.dart';
import 'package:up_todo/src/core/extensions/context/app_media_query_size_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_assets_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: context.textTheme.headlineSmall?.copyWith(
            height: 2,
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: context.textTheme.labelMedium?.copyWith(
                  color: const Color(0xffAFAFAF),
                  height: 1.5,
                  fontSize: 14,
                ),
              ),
              const Gap(20),
              ListTile(
                contentPadding: const EdgeInsets.only(right: 15),
                leading: SvgPicture.asset(
                  context.appAssets.systemMode,
                  width: 30,
                  height: 30,
                ),
                title: Text(
                  "Theme mode",
                  style: context.textTheme.labelLarge,
                ),
                trailing: SizedBox(
                  width: context.getWidth(0.25),
                  child: DropdownButton(
                    isExpanded: true,
                    underline: const SizedBox.shrink(),
                    value: state.currentThemeEnum,
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_drop_down_rounded),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    style: context.textTheme.labelLarge,
                    items: [
                      DropdownMenuItem(
                        value: AppTheme.DARK,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              context.appAssets.moon,
                              width: 20,
                              height: 20,
                            ),
                            const Gap(10),
                            const Text("Dark"),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: AppTheme.LIGHT,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              context.appAssets.sun,
                              width: 25,
                              height: 25,
                            ),
                            const Gap(10),
                            const Text("Light"),
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: AppTheme.SYSTEM,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              context.appAssets.systemMode,
                              width: 25,
                              height: 25,
                            ),
                            const Gap(10),
                            const Text("System"),
                          ],
                        ),
                      ),
                    ],
                    selectedItemBuilder: (BuildContext context) {
                      return [
                        const Center(
                          child: Text("Dark"),
                        ),
                        const Center(
                          child: Text("Light"),
                        ),
                        const Center(
                          child: Text("System"),
                        ),
                      ];
                    },
                    onChanged: (value) {
                      if (value != null) {
                        context.read<ThemeCubit>().setCurrentTheme(value);
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
