import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/dialog_box.dart';
import 'Widgets/todo_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> title = [
      'Feed my cat',
      'Having breakfast',
      'Do Sports',
      'Taking shower'
    ];
    final List<bool> isCompleted = [true, true, false, false];

    final TextEditingController controller = TextEditingController();

    void checkBoxChange({required bool? value, required int index}) {}

    void saveNewTask() {
      {}
    }

    void cancelNewTask() {
      {
        controller.clear();
        Navigator.of(context).pop();
      }
    }

    void addNewTask() {
      showDialog(
        context: context,
        builder: (context) => DialogBox(
          controller: controller,
          onSave: saveNewTask,
          onCancel: cancelNewTask,
        ),
      );
    }

    void deleteTask(int index) {}
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
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: title[index],
            isComplated: isCompleted[index],
            onChange: (value) {
              checkBoxChange(index: index, value: value);
            },
            deleteFunction: (ctx) {
              deleteTask(index);
            },
          );
        },
      ),
    );
  }
}
