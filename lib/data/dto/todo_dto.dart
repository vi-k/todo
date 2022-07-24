import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/models/remind.dart';
import 'package:todo/domain/models/repeat.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/models/todo_status.dart';

part 'todo_dto.freezed.dart';
part 'todo_dto.g.dart';

@freezed
class TodoDto with _$TodoDto {
  TodoDto._();

  factory TodoDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'due_on') required DateTime dueOn,
    @JsonKey(name: 'status') required TodoStatus status,
  }) = _TodoDto;

  factory TodoDto.fromJson(Map<String, dynamic> json) =>
      _$TodoDtoFromJson(json);

  Todo toTodo() => Todo(
        id: id,
        title: title,
        startTime: dueOn,
        remind: Remind.never,
        repeat: Repeat.never,
        status: status,
      );
}
