import 'package:up_todo/src/core/di/service_locator.dart';
import 'package:up_todo/src/features/onboarding/presentation/bloc/onboarding_cubit.dart';

void onboardingDi() {
  //*Cubit
  getIt.registerFactory(() => OnboardingCubit());
}
