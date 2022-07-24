part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.load() = _Load;

  const factory TodosEvent.update(Todo todo) = _Update;

  const factory TodosEvent.delete(int todoId) = _Delete;
}
