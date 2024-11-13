import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_task/Features/To%20Do/Presentation/Controller/task/task_bloc.dart';

import 'Widgets/dialog_box.dart';
import 'Widgets/todo_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void saveNewTask() {
      context.read<TaskBloc>().add(const AddTask());

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

    //void deleteTask(int index) {}
    return Scaffold(
      // backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Center(
          child: Text(
            "To Do List",
            style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
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
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return ToDoTile(
                  taskName: task.name,
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
            return Center(child: Text("Error: ${state.message}"));
          } else {
            return const Center(child: Text("No tasks available."));
          }
        },
      ),
    );
  }
}
