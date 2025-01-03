import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_cubit.dart';
import 'package:up_todo/src/core/di/service_locator.dart';
import 'package:up_todo/src/features/onboarding/presentation/bloc/onboarding_cubit.dart';

class BlocScope extends StatelessWidget {
  final Widget child;

  const BlocScope({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ThemeCubit>()..loadCurrentTheme(),
        ),
        BlocProvider(create: (context) => getIt<OnboardingCubit>()),
      ],
      child: child,
    );
  }
}
