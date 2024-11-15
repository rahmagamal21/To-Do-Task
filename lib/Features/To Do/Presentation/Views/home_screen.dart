import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/Features/To%20Do/Presentation/Controller/task/task_bloc.dart';

import 'Widgets/dialog_box.dart';
import 'Widgets/todo_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void saveNewTask() {
      context.read<TaskBloc>().add(AddTask(context));

      Navigator.of(context).pop();
    }

    void cancelNewTask() {
      {
        BlocProvider.of<TaskBloc>(context).controller.clear();
        Navigator.of(context).pop();
      }
    }

    void addNewTask() {
      showDialog(
        context: context,
        builder: (context) => DialogBox(
          controller: BlocProvider.of<TaskBloc>(context).controller,
          onSave: saveNewTask,
          onCancel: cancelNewTask,
        ),
      );
    }

    return Scaffold(
      // backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: context.read<TaskBloc>().searchController,
              decoration: const InputDecoration(
                hintText: 'Search tasks...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewTask,
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          if (state is TaskLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TaskLoaded) {
            final tasks = state.tasks;
            return ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return ToDoTile(
                  taskName: task.todo,
                  isComplated: task.completed,
                  onChange: (value) {
                    context.read<TaskBloc>().add(
                          UpdateTask(task.id, value!),
                        );
                  },
                  deleteFunction: (ctx) {
                    context.read<TaskBloc>().add(DeleteTask(task.id));
                  },
                );
              },
            );
          } else if (state is TaskFailure) {
            log(state.message);
            return Center(child: Text("Error: ${state.message}"));
          } else {
            return const Center(child: Text("No tasks available."));
          }
        },
      ),
    );
  }
}
