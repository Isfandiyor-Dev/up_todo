import 'package:equatable/equatable.dart';

import 'sub_task_model.dart';

class TaskModel extends Equatable {
  final String id;
  final String title;
  final String description;
  final DateTime? taskTime;
  final DateTime createdAt = DateTime.now();
  final String categoryId;
  final int priority;
  final List<SubTaskModel> subTasks;
  final bool isCompleted;

  TaskModel({
    required this.id,
    required this.title,
    required this.categoryId,
    this.description = '',
    this.taskTime,
    this.priority = 1,
    this.subTasks = const [],
    this.isCompleted = false,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        taskTime,
        createdAt,
        categoryId,
        priority,
        subTasks,
        isCompleted,
      ];
}
