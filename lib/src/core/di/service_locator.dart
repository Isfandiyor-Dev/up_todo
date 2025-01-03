import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/src/core/bloc/theme_cubit/theme_cubit.dart';
import 'package:up_todo/src/core/config/local_config.dart';
import 'package:up_todo/src/core/routes/app_router.dart';

import '../../features/onboarding/onboarding_di.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDi() async {
  //*App Router
  getIt.registerLazySingleton(() => AppRouter());

  //*Local Config
  final prefers = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => prefers);
  getIt.registerLazySingleton(() => LocalConfig(preferences: getIt()));

  //*Cubit
  getIt.registerFactory(() => ThemeCubit(localConfig: getIt()));

  //*Features
  onboardingDi();
}
