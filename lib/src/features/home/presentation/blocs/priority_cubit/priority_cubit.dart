import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'priority_state.dart';

class PriorityCubit extends Cubit<PriorityState> {
  PriorityCubit() : super(PriorityState());

  void setPriority(int? newPriority) {
    emit(state.copyWith(priority: newPriority));
  }

  void disposePriority() {
    emit(state.copyWith(priority: null));
  }
}
