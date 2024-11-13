
import 'task_entity.dart';

abstract class TaskRepository {
  Future<List<TaskEntity>> getTasks();
  Future<TaskEntity> addTask(String name, bool completed);
  Future<TaskEntity> updateTask(int id, bool completed);
  Future<void> deleteTask(int id);
}
