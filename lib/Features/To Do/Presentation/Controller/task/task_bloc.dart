import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
  TaskBloc(this.getTasks, this.addTask, this.updateTask, this.deleteTask)
      : super(const TaskState.initial()) {
    on<FetchTasks>(_onFetchTasks);
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }
  Future<void> _onFetchTasks(FetchTasks event, Emitter<TaskState> emit) async {
    emit(const TaskState.taskLoading());
    try {
      final tasks = await getTasks();
      emit(TaskState.taskLoaded(tasks));
    } catch (e) {
      emit(TaskState.taskFailure(e.toString()));
      log(e.toString());
    }
  }

  Future<void> _onAddTask(AddTask event, Emitter<TaskState> emit) async {
    if (state is TaskLoaded) {
      final currentTasks = (state as TaskLoaded).tasks;
      try {
        final newTask = await addTask(controller.text, false);

        final updatedTasks = List<TaskEntity>.from(currentTasks)..add(newTask);

        emit(TaskState.taskLoaded(updatedTasks));

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
        log("Updated Tasks: $updatedTasks");
        emit(TaskState.taskLoaded(updatedTasks));
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

        emit(TaskState.taskLoaded(updatedTasks));
      } catch (e) {
        emit(TaskState.taskFailure(e.toString()));
      }
    }
  }
}
