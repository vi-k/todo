import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:todo/data/entities/todo_entity.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/models/todo_status.dart';
import 'package:todo/domain/repositories/todos_repository.dart';
import 'package:todo/exceptions/app_exception.dart';

class ApiTodosRepository extends TodosRepository {
  ApiTodosRepository(this.dio);

  final Dio dio;

  @override
  Future<List<Todo>> todos() async {
    try {
      final response =
          await dio.get<List<dynamic>>('https://gorest.co.in/public/v2/todos');

      return List<Todo>.unmodifiable(
        response.data!.map<Todo>((dynamic e) =>
            TodoEntity.fromJson(e as Map<String, dynamic>).toTodo()),
      );
    } on DioError catch (error, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fromDio(error, AppLoadingException(error)),
        stackTrace,
      );
    }
  }

  static int _nextTodoId = -1;

  @override
  Future<int> create({
    required String title,
    required DateTime dueOn,
    required TodoStatus status,
  }) async {
    try {
      log(
        'create todo {title: $title, dueOn: $dueOn, status: $status}',
        name: 'todo',
      );

      // Для имитации сохранения и проверки связи.
      await dio.get<List<dynamic>>('https://gorest.co.in/public/v2/todos');

      return _nextTodoId--;
    } on DioError catch (error, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fromDio(error, AppSavingException(error)),
        stackTrace,
      );
    }
  }

  @override
  Future<void> update({
    String? title,
    DateTime? dueOn,
    TodoStatus? status,
  }) async {
    try {
      log(
        'update todo {title: $title, dueOn: $dueOn, status: $status}',
        name: 'todo',
      );

      // Для имитации сохранения и проверки связи.
      await dio.get<List<dynamic>>('https://gorest.co.in/public/v2/todos');
    } on DioError catch (error, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fromDio(error, AppSavingException(error)),
        stackTrace,
      );
    }
  }

  @override
  Future<void> delete(int todoId) async {
    try {
      log(
        'delete todo $todoId',
        name: 'todo',
      );

      // Для имитации сохранения и проверки связи.
      await dio.get<List<dynamic>>('https://gorest.co.in/public/v2/todos');
    } on DioError catch (error, stackTrace) {
      Error.throwWithStackTrace(
        AppException.fromDio(error, AppSavingException(error)),
        stackTrace,
      );
    }
  }
}
