import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/models/remind.dart';
import 'package:todo/domain/models/repeat.dart';
import 'package:todo/domain/models/todo_status.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    required int id,
    required String title,
    required DateTime startTime,
    DateTime? endTime,
    required Remind remind,
    required Repeat repeat,
    required TodoStatus status,
  }) = _Todo;
}
