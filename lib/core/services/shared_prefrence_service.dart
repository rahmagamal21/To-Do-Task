// import 'package:injectable/injectable.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

// import 'package:to_do_task/Features/To%20Do/Domain/task_entity.dart';

// @injectable
// class SharedPreferencesService {
//   Future<List<TaskEntity>> getTasks() async {
//     final prefs = await SharedPreferences.getInstance();
//     final taskList = prefs.getString('task_list');
//     if (taskList != null) {
//       final List<dynamic> decoded = json.decode(taskList);
//       return List<TaskEntity>.from(
//           decoded.map((task) => TaskEntity.fromJson(task)));
//     }
//     return [];
//   }

//   Future<void> saveTasks(List<TaskEntity> tasks) async {
//     final prefs = await SharedPreferences.getInstance();
//     final List<Map<String, dynamic>> encoded =
//         tasks.map((task) => task.toJson()).toList();
//     final String encodedString = json.encode(encoded);
//     await prefs.setString('task_list', encodedString);
//   }

//   Future<void> clearTasks() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.remove('task_list');
//   }
// }
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_task/Features/To%20Do/Domain/task_entity.dart';

import '../../Features/To Do/Data/model/task_model.dart';

@injectable
class SharedPreferencesService {
  static const String taskKey = 'tasks';

  Future<void> saveTasks(List<TaskEntity> tasks) async {
    final prefs = await SharedPreferences.getInstance();
    final tasksJson = tasks.map((task) => jsonEncode(task.toJson())).toList();
    await prefs.setStringList(taskKey, tasksJson);
  }

  Future<List<TaskModel>> getTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final tasksJson = prefs.getStringList(taskKey);
    if (tasksJson != null) {
      return tasksJson
          .map((task) => TaskModel.fromJson(jsonDecode(task)))
          .toList();
    }
    return [];
  }

  Future<void> clearTasks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(taskKey);
  }
}
