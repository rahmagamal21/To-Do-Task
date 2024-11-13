import 'package:injectable/injectable.dart';
import 'package:to_do_task/core/services/injectable_config.dart';

import '../Data/repository/task_repository_impl.dart';
import 'task_entity.dart';

final repository = getIt<TaskRepositoryImpl>();

@injectable
class GetTasksUseCase {
  Future<List<TaskEntity>> call() async {
    return await repository.getTasks();
  }
}

@injectable
class AddTaskUseCase {
  Future<TaskEntity> call(String task, bool completed) {
    return repository.addTask(task, completed);
  }
}

@injectable
class UpdateTaskUseCase {
  Future<void> call(int taskId, bool isCompleted) {
    return repository.updateTask(taskId, isCompleted);
  }
}

@injectable
class DeleteTaskUseCase {
  Future<void> call(int taskId) {
    return repository.deleteTask(taskId);
  }
}
