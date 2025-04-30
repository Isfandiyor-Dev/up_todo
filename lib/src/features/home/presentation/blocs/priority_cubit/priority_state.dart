part of 'priority_cubit.dart';
final class PriorityState extends Equatable {
  final int? priority;

  const PriorityState({
    this.priority,
  });

  PriorityState copyWith({final int? priority}) {
    return PriorityState(
      priority: priority ?? this.priority,
    );
  }

  @override
  List<Object?> get props => [priority];
}
