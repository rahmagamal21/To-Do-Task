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
  final TextEditingController searchController = TextEditingController();
  final SharedPreferencesService sharedPreferencesService;
  List<TaskEntity> _allTasks = [];
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
    on<SearchTasks>(_onSearchTasks);
    searchController.addListener(() {
      add(SearchTasks(searchController.text));
    });
  }
  Future<void> _onFetchTasks(FetchTasks event, Emitter<TaskState> emit) async {
    emit(const TaskState.taskLoading());
    try {
      final cachedTasks = await sharedPreferencesService.getTasks();
      if (cachedTasks.isNotEmpty) {
        _allTasks = cachedTasks.map((task) => task.toEntity()).toList();
        emit(TaskState.taskLoaded(
            cachedTasks.map((task) => task.toEntity()).toList()));
      } else {
        final tasksFromServer = await getTasks();
        _allTasks = tasksFromServer;
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
      //final currentTasks = (state as TaskLoaded).tasks;
      try {
        final newTask = await addTask(controller.text, false);
        _allTasks = List<TaskEntity>.from(_allTasks)..add(newTask);

        //final updatedTasks = List<TaskEntity>.from(currentTasks)..add(newTask);

        emit(TaskState.taskLoaded(_allTasks));
        await sharedPreferencesService.saveTasks(_allTasks);

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
        // final updatedTasks = (state as TaskLoaded).tasks.map((task) {
        //   if (task.id == event.id) {
        //     return task.copyWith(completed: event.completed);
        //   }
        //   return task;
        _allTasks = _allTasks.map((task) {
          if (task.id == event.id) {
            return task.copyWith(completed: event.completed);
          }
          return task;
        }).toList();

        emit(TaskState.taskLoaded(_allTasks));
        await sharedPreferencesService.saveTasks(_allTasks);

        await updateTask(event.id, event.completed);
      } catch (e) {
        if (e is DioException && e.response?.statusCode == 404) {
          log("Task update failed on server with 404: ${e.message}");
        } else {
          emit(TaskState.taskFailure(e.toString()));
        }
      }
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      try {
        _allTasks = _allTasks.where((task) => task.id != event.id).toList();

        // final updatedTasks = (state as TaskLoaded)
        //     .tasks
        //     .where((task) => task.id != event.id)
        //     .toList();

        emit(TaskState.taskLoaded(_allTasks));

        await sharedPreferencesService.saveTasks(_allTasks);
        await deleteTask(event.id);
      } catch (e) {
        if (e is DioException && e.response?.statusCode == 404) {
          log("Task deletion failed on server with 404: ${e.message}");
        } else {
          emit(TaskState.taskFailure(e.toString()));
        }
      }
    }
  }

  void _onSearchTasks(SearchTasks event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      // final currentTasks = (state as TaskLoaded).tasks;
      // final query = event.query.toLowerCase();
      // if (query.isEmpty) {
      //   add(const FetchTasks());
      //   return;
      // }
      // final filteredTasks = currentTasks
      //     .where((task) => task.todo.toLowerCase().contains(query))
      //     .toList();

      // emit(TaskState.taskLoaded(filteredTasks));
      try {
        // Always get the full list from SharedPreferences
        final query = event.query.toLowerCase();
        final filteredTasks = _allTasks
            .where((task) => task.todo.toLowerCase().contains(query))
            .toList();

        // Emit filtered list for display
        emit(TaskState.taskLoaded(filteredTasks));
      } catch (e) {
        emit(TaskState.taskFailure('Error filtering tasks: ${e.toString()}'));
      }
    }
  }
}
