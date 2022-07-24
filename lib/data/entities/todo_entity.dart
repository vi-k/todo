import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/models/remind.dart';
import 'package:todo/domain/models/repeat.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/models/todo_status.dart';

part 'todo_entity.freezed.dart';
part 'todo_entity.g.dart';

@freezed
class TodoEntity with _$TodoEntity {
  TodoEntity._();

  factory TodoEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'due_on') required DateTime dueOn,
    @JsonKey(name: 'status') required TodoStatus status,
  }) = _TodoEntity;

  factory TodoEntity.fromJson(Map<String, dynamic> json) =>
      _$TodoEntityFromJson(json);

  Todo toTodo() => Todo(
        id: id,
        title: title,
        startTime: dueOn,
        remind: Remind.never,
        repeat: Repeat.never,
        status: status,
      );
}
