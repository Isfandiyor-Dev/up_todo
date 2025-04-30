part of 'add_properties_bloc.dart';

class AddPropertiesState extends Equatable {
  final int? priority;

  const AddPropertiesState({
    this.priority,
  });

  AddPropertiesState copyWith({final int? priority}) {
    return AddPropertiesState(priority: priority ?? this.priority);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [priority];
}
