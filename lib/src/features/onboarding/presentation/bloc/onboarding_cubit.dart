import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:up_todo/src/features/onboarding/presentation/bloc/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState());

  void setCurrentPage(int newIndex) {
    emit(state.copyWith(currentPage: newIndex));
  }
}
