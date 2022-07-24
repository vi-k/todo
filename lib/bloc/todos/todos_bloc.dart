import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/services/app_service.dart';
import 'package:todo/exceptions/app_exception.dart';

part 'todos_state.dart';
part 'todos_event.dart';
part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc(this.appService) : super(const TodosState.initial()) {
    on<_Load>(_onLoad);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);

    _todoUpdateSubsciption = appService.todoUpdateStream.listen((todo) {
      add(_Update(todo));
    });

    _todoDeleteSubsciption = appService.todoDeleteStream.listen((todoId) {
      add(_Delete(todoId));
    });
  }

  late final StreamSubscription<Todo> _todoUpdateSubsciption;
  late final StreamSubscription<int> _todoDeleteSubsciption;

  @override
  Future<void> close() {
    _todoUpdateSubsciption.cancel();
    _todoDeleteSubsciption.cancel();

    return super.close();
  }

  final AppService appService;

  Future<void> _onLoad(_Load event, Emitter<TodosState> emit) async {
    emit(const TodosState.loadInProgress());

    try {
      final todos = await appService.todos();

      emit(TodosState.data(todos));
    } on AppException catch (error) {
      emit(TodosState.error(error));
    }
  }

  Future<void> _onUpdate(_Update event, Emitter<TodosState> emit) async {
    state.whenOrNull(data: (todos) {
      final newTodos = List<Todo>.from(todos);

      final index = todos.indexWhere((element) => element.id == event.todo.id);
      if (index == -1) {
        newTodos.add(event.todo);
      } else {
        newTodos[index] = event.todo;
      }

      emit(
        TodosState.data(List.unmodifiable(newTodos)),
      );
    });
  }

  Future<void> _onDelete(_Delete event, Emitter<TodosState> emit) async {
    state.whenOrNull(data: (todos) {
      final newTodos = List<Todo>.from(todos)
        ..removeWhere((element) => element.id == event.todoId);

      emit(
        TodosState.data(List.unmodifiable(newTodos)),
      );
    });
  }
}
