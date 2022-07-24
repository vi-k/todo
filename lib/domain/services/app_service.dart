import 'dart:async';

import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/repositories/todos_repository.dart';

class AppService {
  AppService(this.todosRepository);

  final TodosRepository todosRepository;

  final StreamController<Todo> _todoUpdateStreamController =
      StreamController.broadcast();
  Stream<Todo> get todoUpdateStream => _todoUpdateStreamController.stream;

  final StreamController<int> _todoDeleteStreamController =
      StreamController.broadcast();
  Stream<int> get todoDeleteStream => _todoDeleteStreamController.stream;

  Future<List<Todo>> todos() => todosRepository.todos();

  void dispose() {
    _todoUpdateStreamController.close();
    _todoDeleteStreamController.close();
  }

  Future<int> createTodo(Todo todo) async {
    final id = await todosRepository.create(
      title: todo.title,
      dueOn: todo.startTime,
      status: todo.status,
    );

    _todoUpdateStreamController.add(
      todo.copyWith(id: id),
    );

    return id;
  }

  Future<void> updateTodo(Todo todo) async {
    await todosRepository.update(
      title: todo.title,
      dueOn: todo.startTime,
      status: todo.status,
    );

    _todoUpdateStreamController.add(todo);
  }

  Future<void> deleteTodo(int todoId) async {
    await todosRepository.delete(todoId);

    _todoDeleteStreamController.add(todoId);
  }
}
