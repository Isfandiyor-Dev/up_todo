import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_cubit.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_state.dart';
import 'package:up_todo/src/core/enums/app_theme.dart';
import 'package:up_todo/src/core/extensions/app_size_extension.dart';
import 'package:up_todo/src/core/extensions/context_extension.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            // color: Colors.white.withOpacity(0.87),
            fontFamily: "Lato",
            height: 2,
            letterSpacing: -0.5,
            fontSize: 20,
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
              const Text(
                "Settings",
                style: TextStyle(
                  color: Color(0xffAFAFAF),
                  fontFamily: "Lato",
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
                title: const Text(
                  "Theme mode",
                  style: TextStyle(
                    // color: Colors.white.withOpacity(0.87),
                    fontFamily: "Lato",
                    fontSize: 16,
                  ),
                ),
                trailing: SizedBox(
                  width: context.getWidth(0.3),
                  child: DropdownButton(
                    isExpanded: true,
                    underline: const SizedBox.shrink(),
                    value: state.currentThemeEnum,
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    borderRadius: BorderRadius.circular(20),
                    style: const TextStyle(
                      // color: Colors.white.withOpacity(0.87),
                      fontFamily: "Lato",
                      fontSize: 16,
                    ),
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
