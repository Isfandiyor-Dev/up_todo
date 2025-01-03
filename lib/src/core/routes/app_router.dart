import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:up_todo/src/features/calendar/presentation/screens/calendar.dart';
import 'package:up_todo/src/features/focus/presentation/screens/focus.dart';
import 'package:up_todo/src/features/home/presentation/screens/home.dart';
import 'package:up_todo/src/features/introduction/presentation/screens/intro_screen.dart';
import 'package:up_todo/src/features/onboarding/presentation/screens/onboarding.dart';
import 'package:up_todo/src/features/not_found/presentation/screens/not_found_screen.dart';
import 'package:up_todo/src/features/root/presentation/screens/root_screen.dart';
import '../../features/settings/presentation/screens/settings.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "root");

class AppRouter {
  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      navigatorKey: rootNavigatorKey,
      errorBuilder: (context, state) => const NotFoundScreen(),
      initialLocation: '/',
      routes: [
        GoRoute(
          path: "/",
          name: "intro",
          builder: (context, state) => const IntroScreen(),
        ),
        GoRoute(
          path: "/notfound",
          name: "notfound",
          builder: (context, state) => const NotFoundScreen(),
        ),
        GoRoute(
          path: "/onboarding",
          name: "onboarding",
          builder: (context, state) => const Onboarding(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => RootScreen(
            navigationShell: navigationShell,
          ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/home",
                  name: "home",
                  builder: (context, state) => HomeScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/calendar",
                  name: "calendar",
                  builder: (context, state) => const CalendarScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/focus",
                  name: "focus",
                  builder: (context, state) => const FocusScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/settings",
                  name: "settings",
                  builder: (context, state) => const SettingsScreen(),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
