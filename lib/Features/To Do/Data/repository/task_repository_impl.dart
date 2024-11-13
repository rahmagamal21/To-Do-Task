import 'dart:developer';

import '../../Domain/task_entity.dart';
import '../../Domain/task_repository.dart';
import '../service/api_service.dart';

class TaskRepositoryImpl implements TaskRepository {
  final ApiService apiService;

  TaskRepositoryImpl(this.apiService);

  @override
  Future<List<TaskEntity>> getTasks() async {
    final response = await apiService.getTasks();
    return response.todos.map((task) => task.toEntity()).toList();
  }

  @override
  Future<TaskEntity> addTask(String name, bool completed) async {
    final task = await apiService
        .addTask({"todo": name, "completed": completed, "userId": 5});
    log(task.toEntity().id.toString());
    return task.toEntity();
  }

  @override
  Future<TaskEntity> updateTask(int id, bool completed) async {
    final task = await apiService.updateTask(id, {"completed": completed});
    return task.toEntity();
  }

  @override
  Future<void> deleteTask(int id) async {
    await apiService.deleteTask(id);
  }
}
