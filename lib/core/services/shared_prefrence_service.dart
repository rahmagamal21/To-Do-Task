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
