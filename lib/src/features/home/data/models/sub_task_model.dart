import 'package:equatable/equatable.dart';

class SubTaskModel extends Equatable {
  String id;
  String title;
  bool isCompleted;

  SubTaskModel({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  @override
  List<Object?> get props => [id];
}