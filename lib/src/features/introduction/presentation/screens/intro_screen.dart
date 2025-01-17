import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/gen/assets.gen.dart';
import 'package:up_todo/src/core/extensions/context/app_text_theme_extension.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    _checkIsPassed();
  }

  Future<void> _checkIsPassed() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (context.mounted) {
          context.go("/onboarding");
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.logos.svg.logo,
              width: 70,
              height: 70,
            ),
            Text(
              'UpTodo',
              style: context.textTheme.displaySmall?.copyWith(
                height: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
