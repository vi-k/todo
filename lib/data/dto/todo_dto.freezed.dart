// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoDto _$TodoDtoFromJson(Map<String, dynamic> json) {
  return _TodoDto.fromJson(json);
}

/// @nodoc
mixin _$TodoDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_on')
  DateTime get dueOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  TodoStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDtoCopyWith<TodoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDtoCopyWith<$Res> {
  factory $TodoDtoCopyWith(TodoDto value, $Res Function(TodoDto) then) =
      _$TodoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'due_on') DateTime dueOn,
      @JsonKey(name: 'status') TodoStatus status});
}

/// @nodoc
class _$TodoDtoCopyWithImpl<$Res> implements $TodoDtoCopyWith<$Res> {
  _$TodoDtoCopyWithImpl(this._value, this._then);

  final TodoDto _value;
  // ignore: unused_field
  final $Res Function(TodoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? dueOn = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dueOn: dueOn == freezed
          ? _value.dueOn
          : dueOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoDtoCopyWith<$Res> implements $TodoDtoCopyWith<$Res> {
  factory _$$_TodoDtoCopyWith(
          _$_TodoDto value, $Res Function(_$_TodoDto) then) =
      __$$_TodoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'due_on') DateTime dueOn,
      @JsonKey(name: 'status') TodoStatus status});
}

/// @nodoc
class __$$_TodoDtoCopyWithImpl<$Res> extends _$TodoDtoCopyWithImpl<$Res>
    implements _$$_TodoDtoCopyWith<$Res> {
  __$$_TodoDtoCopyWithImpl(_$_TodoDto _value, $Res Function(_$_TodoDto) _then)
      : super(_value, (v) => _then(v as _$_TodoDto));

  @override
  _$_TodoDto get _value => super._value as _$_TodoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? dueOn = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TodoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dueOn: dueOn == freezed
          ? _value.dueOn
          : dueOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoDto extends _TodoDto {
  _$_TodoDto(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'due_on') required this.dueOn,
      @JsonKey(name: 'status') required this.status})
      : super._();

  factory _$_TodoDto.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDtoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'due_on')
  final DateTime dueOn;
  @override
  @JsonKey(name: 'status')
  final TodoStatus status;

  @override
  String toString() {
    return 'TodoDto(id: $id, title: $title, dueOn: $dueOn, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.dueOn, dueOn) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(dueOn),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_TodoDtoCopyWith<_$_TodoDto> get copyWith =>
      __$$_TodoDtoCopyWithImpl<_$_TodoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDtoToJson(
      this,
    );
  }
}

abstract class _TodoDto extends TodoDto {
  factory _TodoDto(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'due_on') required final DateTime dueOn,
      @JsonKey(name: 'status') required final TodoStatus status}) = _$_TodoDto;
  _TodoDto._() : super._();

  factory _TodoDto.fromJson(Map<String, dynamic> json) = _$_TodoDto.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'due_on')
  DateTime get dueOn;
  @override
  @JsonKey(name: 'status')
  TodoStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDtoCopyWith<_$_TodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
