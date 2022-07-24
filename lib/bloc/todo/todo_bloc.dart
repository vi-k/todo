import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/services/app_service.dart';
import 'package:todo/exceptions/app_exception.dart';

part 'todo_state.dart';
part 'todo_event.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc(this.appService) : super(const TodoState.pending()) {
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
    on<_Delay>(_onDelay);
  }

  final AppService appService;

  Future<void> _onCreate(_Create event, Emitter<TodoState> emit) async {
    emit(const TodoState.saveInProgress());

    try {
      await appService.createTodo(event.todo);

      emit(const TodoState.finished());
    } on AppException catch (error) {
      emit(TodoState.error(error));
    }
  }

  Future<void> _onUpdate(_Update event, Emitter<TodoState> emit) async {
    emit(const TodoState.saveInProgress());

    try {
      await appService.updateTodo(event.todo);

      emit(const TodoState.finished());
    } on AppException catch (error) {
      emit(TodoState.error(error));
    }
  }

  Future<void> _onDelete(_Delete event, Emitter<TodoState> emit) async {
    emit(const TodoState.saveInProgress());

    try {
      await appService.deleteTodo(event.todoId);

      emit(const TodoState.finished());
    } on AppException catch (error) {
      emit(TodoState.error(error));
    }
  }

  Future<void> _onDelay(_Delay event, Emitter<TodoState> emit) async {
    emit(const TodoState.saveInProgress());

    await Future<void>.delayed(const Duration(seconds: 2));

    emit(const TodoState.pending());
  }
}
