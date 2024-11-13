import 'package:json_annotation/json_annotation.dart';
import 'task_model.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  final List<TaskModel> todos;

  TaskResponse({required this.todos});

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);
}
