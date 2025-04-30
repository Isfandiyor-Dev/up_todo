import 'package:up_todo/src/core/di/service_locator.dart';
import 'package:up_todo/src/features/home/presentation/blocs/priority_cubit/priority_cubit.dart';

void homeDi() {
  //*Cubit
  getIt.registerFactory(() => PriorityCubit());
}