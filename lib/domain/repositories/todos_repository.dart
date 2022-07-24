import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/models/todo_status.dart';

// ignore: one_member_abstracts
abstract class TodosRepository {
  Future<List<Todo>> todos();

  Future<int> create({
    required String title,
    required DateTime dueOn,
    required TodoStatus status,
  });

  Future<void> update({
    String? title,
    DateTime? dueOn,
    TodoStatus? status,
  });

  Future<void> delete(int todoId);
}
