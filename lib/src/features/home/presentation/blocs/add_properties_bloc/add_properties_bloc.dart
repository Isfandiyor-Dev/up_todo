import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_properties_event.dart';
part 'add_properties_state.dart';

class AddPropertiesBloc extends Bloc<AddPropertiesEvent, AddPropertiesState> {
  AddPropertiesBloc() : super(AddPropertiesState());
}
