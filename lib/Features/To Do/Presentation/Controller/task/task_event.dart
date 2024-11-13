part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.fetchTasks() = FetchTasks;
  const factory TaskEvent.addTask(BuildContext context) = AddTask;
  const factory TaskEvent.updateTask(int id, bool completed) = UpdateTask;
  const factory TaskEvent.deleteTask(int id) = DeleteTask;
  const factory TaskEvent.searchTasks(String query) = SearchTasks;
}
