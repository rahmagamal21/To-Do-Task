import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/services/shared_prefrence_service.dart';
import '../../../Domain/use_cases.dart';
import '../../../Domain/task_entity.dart';

part 'task_state.dart';
part 'task_event.dart';
part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTasksUseCase getTasks;
  final AddTaskUseCase addTask;
  final UpdateTaskUseCase updateTask;
  final DeleteTaskUseCase deleteTask;
  final TextEditingController controller = TextEditingController();
  final SharedPreferencesService sharedPreferencesService;
  TaskBloc(
    this.getTasks,
    this.addTask,
    this.updateTask,
    this.deleteTask,
    this.sharedPreferencesService,
    // this.sharedPreferencesService
  ) : super(const TaskState.initial()) {
    on<FetchTasks>(_onFetchTasks);
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }
  Future<void> _onFetchTasks(FetchTasks event, Emitter<TaskState> emit) async {
    emit(const TaskState.taskLoading());
    // try {
    //   final tasks = await getTasks();
    //   emit(TaskState.taskLoaded(tasks));
    //   // final tasksFromCache = await sharedPreferencesService.getTasks();
    //   // if (tasksFromCache.isNotEmpty) {
    //   //   emit(TaskState.taskLoaded(tasksFromCache));
    //   // } else {
    //   //   final tasksFromServer = await getTasks();
    //   //   emit(TaskState.taskLoaded(tasksFromServer));
    //   //   await sharedPreferencesService.saveTasks(tasksFromServer);
    //   // }
    // } catch (e) {
    //   emit(TaskState.taskFailure(e.toString()));
    //   log(e.toString());
    // }
    try {
      final cachedTasks = await sharedPreferencesService.getTasks();
      if (cachedTasks.isNotEmpty) {
        emit(TaskState.taskLoaded(
            cachedTasks.map((task) => task.toEntity()).toList()));
      } else {
        final tasksFromServer = await getTasks();
        emit(TaskState.taskLoaded(tasksFromServer));
        await sharedPreferencesService.saveTasks(tasksFromServer);
      }
    } catch (e) {
      log(e.toString());

      emit(TaskState.taskFailure(e.toString()));
    }
  }

  Future<void> _onAddTask(AddTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      final currentTasks = (state as TaskLoaded).tasks;
      try {
        final newTask = await addTask(controller.text, false);

        final updatedTasks = List<TaskEntity>.from(currentTasks)..add(newTask);

        emit(TaskState.taskLoaded(updatedTasks));
        await sharedPreferencesService.saveTasks(updatedTasks);

        controller.clear();

        ScaffoldMessenger.of(event.context).showSnackBar(
          const SnackBar(
            content: Text('Task successfully added!'),
            backgroundColor: Color.fromARGB(255, 223, 174, 231),
          ),
        );
      } catch (e) {
        emit(TaskState.taskFailure(e.toString()));
      }
    }
  }

  Future<void> _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      try {
        // Update the local list first
        final updatedTasks = (state as TaskLoaded).tasks.map((task) {
          if (task.id == event.id) {
            return task.copyWith(completed: event.completed);
          }
          return task;
        }).toList();

        // Emit the updated state immediately to show changes on the UI
        await sharedPreferencesService.saveTasks(updatedTasks);
        emit(TaskState.taskLoaded(updatedTasks));

        // Attempt to update on the server
        await updateTask(event.id, event.completed);
      } catch (e) {
        // If the error is due to a 404, log it silently without impacting the UI
        if (e is DioException && e.response?.statusCode == 404) {
          log("Task update failed on server with 404: ${e.message}");
        } else {
          // For other errors, emit failure state to the UI
          emit(TaskState.taskFailure(e.toString()));
        }
      }
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      try {
        // Update the local list by removing the task immediately
        final updatedTasks = (state as TaskLoaded)
            .tasks
            .where((task) => task.id != event.id)
            .toList();

        // Emit the updated state immediately to show changes on the UI
        emit(TaskState.taskLoaded(updatedTasks));

        // Attempt to delete from the server
        await sharedPreferencesService.saveTasks(updatedTasks);
        await deleteTask(event.id);
      } catch (e) {
        // If the error is due to a 404, log it silently without impacting the UI
        if (e is DioException && e.response?.statusCode == 404) {
          log("Task deletion failed on server with 404: ${e.message}");
        } else {
          // For other errors, emit failure state to the UI
          emit(TaskState.taskFailure(e.toString()));
        }
      }
    }
  }
}
