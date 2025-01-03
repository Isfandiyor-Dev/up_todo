import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:up_todo/src/core/bloc/bloc_scope/bloc_scope.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_cubit.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_state.dart';
import 'package:up_todo/src/core/di/service_locator.dart';
import 'src/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDi();
  runApp(const BlocScope(child: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.platformDispatcher.onPlatformBrightnessChanged =
        () => context.read<ThemeCubit>().loadCurrentTheme();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: state.currentTheme,
        routerConfig: _appRouter.router,
      );
    });
  }
}
