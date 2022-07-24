part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.create(Todo todo) = _Create;

  const factory TodoEvent.update(Todo todo) = _Update;

  const factory TodoEvent.delete(int todoId) = _Delete;

  const factory TodoEvent.delay() = _Delay;
}
