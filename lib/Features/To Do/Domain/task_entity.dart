class TaskEntity {
  final int id;
  final String todo;
  final bool completed;
  final int userId;

  TaskEntity({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });
  TaskEntity copyWith({
    int? id,
    String? todo,
    bool? completed,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      todo: todo ?? this.todo,
      completed: completed ?? this.completed,
      userId: userId,
    );
  }
}
