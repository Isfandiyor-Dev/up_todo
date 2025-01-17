import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

class NoTasks extends StatelessWidget {
  const NoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            SizedBox(
              width: 220,
              height: 220,
              child: SvgPicture.asset(
                Assets.images.svg.common.noTasks,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),
            Text(
              'What do you want to do today?',
              style: context.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(10),
            Text(
              'Tap + to add your tasks',
              style: context.textTheme.bodyLarge?.copyWith(height: 2.5),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
