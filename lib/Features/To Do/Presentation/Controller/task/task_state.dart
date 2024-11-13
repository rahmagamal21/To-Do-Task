part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = Initial;
  const factory TaskState.taskLoading() = TaskLoading;
  const factory TaskState.taskLoaded(List<TaskEntity> tasks) = TaskLoaded;
  const factory TaskState.taskOperationSuccess(List<TaskEntity> tasks) =
      TaskOperationSuccess;
  const factory TaskState.taskFailure(String message) = TaskFailure;
}
