import 'dart:developer';

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
      final tasksFromServer = await getTasks();
      emit(TaskState.taskLoaded(tasksFromServer));
      await sharedPreferencesService.saveTasks(tasksFromServer);
    } catch (e) {
      log(e.toString());
      // Load tasks from SharedPreferences if API call fails
      final cachedTasks = await sharedPreferencesService.getTasks();
      emit(TaskState.taskLoaded(cachedTasks));
    }
  }

  Future<void> _onAddTask(AddTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      final currentTasks = (state as TaskLoaded).tasks;
      try {
        final newTask = await addTask(controller.text, false);

        final updatedTasks = List<TaskEntity>.from(currentTasks)..add(newTask);
        // await sharedPreferencesService.saveTasks(updatedTasks);

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
        await updateTask(event.id, event.completed);

        final updatedTasks = (state as TaskLoaded).tasks.map((task) {
          if (task.id == event.id) {
            return task.copyWith(completed: event.completed);
          }
          return task;
        }).toList();
        //check
        // await sharedPreferencesService.saveTasks(updatedTasks);

        emit(TaskState.taskLoaded(updatedTasks));
        await sharedPreferencesService.saveTasks(updatedTasks);
      } catch (e) {
        emit(TaskState.taskFailure(e.toString()));
      }
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      try {
        await deleteTask(event.id);
        final updatedTasks = (state as TaskLoaded)
            .tasks
            .where((task) => task.id != event.id)
            .toList();
        // await sharedPreferencesService.saveTasks(updatedTasks);

        emit(TaskState.taskLoaded(updatedTasks));
        await sharedPreferencesService.saveTasks(updatedTasks);
      } catch (e) {
        emit(TaskState.taskFailure(e.toString()));
      }
    }
  }
}
