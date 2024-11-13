import 'package:json_annotation/json_annotation.dart';

import '../../Domain/task_entity.dart';

part 'task_model.g.dart';

@JsonSerializable()
class TaskModel extends TaskEntity {
  // Use super constructor for inherited fields
  TaskModel({
    required super.id,
    required super.name,
    required super.completed,
  });
  TaskEntity toEntity() {
    return TaskEntity(id: id, name: name, completed: completed);
  }

  // JSON serialization methods
  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
