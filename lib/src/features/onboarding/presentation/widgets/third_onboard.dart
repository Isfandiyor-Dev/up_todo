import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/context/app_media_query_size_extension.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

class ThirdOnboard extends StatelessWidget {
  const ThirdOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.svg.common.organizeTasks,
            width: context.getWidth(0.685),
            height: context.getHeight(0.309),
          ),
          const Gap(50),
          Column(
            children: [
              Text(
                'Organize your tasks',
                style: context.textTheme.headlineLarge?.copyWith(
                  fontSize: context.isSmallWidth ? context.getWidth(0.08) : 25,
                  letterSpacing: 1,
                  height: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'You can organize your daily tasks by adding your tasks into separate categories',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize:
                        context.isSmallWidth ? context.getWidth(0.035) : 16,
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
