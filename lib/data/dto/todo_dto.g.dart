// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDto _$$_TodoDtoFromJson(Map<String, dynamic> json) => _$_TodoDto(
      id: json['id'] as int,
      title: json['title'] as String,
      dueOn: DateTime.parse(json['due_on'] as String),
      status: $enumDecode(_$TodoStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_TodoDtoToJson(_$_TodoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'due_on': instance.dueOn.toIso8601String(),
      'status': _$TodoStatusEnumMap[instance.status]!,
    };

const _$TodoStatusEnumMap = {
  TodoStatus.pending: 'pending',
  TodoStatus.completed: 'completed',
};
