import 'package:json_annotation/json_annotation.dart';

import '../../Domain/task_entity.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskModel extends TaskEntity {
  TaskModel({
    required super.id,
    required super.todo,
    required super.completed,
    required super.userId,
  });
  TaskEntity toEntity() {
    return TaskEntity(id: id, todo: todo, completed: completed, userId: userId);
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
