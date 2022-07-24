// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoEntity _$TodoEntityFromJson(Map<String, dynamic> json) {
  return _TodoEntity.fromJson(json);
}

/// @nodoc
mixin _$TodoEntity {
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
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
          TodoEntity value, $Res Function(TodoEntity) then) =
      _$TodoEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'due_on') DateTime dueOn,
      @JsonKey(name: 'status') TodoStatus status});
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res> implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._value, this._then);

  final TodoEntity _value;
  // ignore: unused_field
  final $Res Function(TodoEntity) _then;

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
abstract class _$$_TodoEntityCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$$_TodoEntityCopyWith(
          _$_TodoEntity value, $Res Function(_$_TodoEntity) then) =
      __$$_TodoEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'due_on') DateTime dueOn,
      @JsonKey(name: 'status') TodoStatus status});
}

/// @nodoc
class __$$_TodoEntityCopyWithImpl<$Res> extends _$TodoEntityCopyWithImpl<$Res>
    implements _$$_TodoEntityCopyWith<$Res> {
  __$$_TodoEntityCopyWithImpl(
      _$_TodoEntity _value, $Res Function(_$_TodoEntity) _then)
      : super(_value, (v) => _then(v as _$_TodoEntity));

  @override
  _$_TodoEntity get _value => super._value as _$_TodoEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? dueOn = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TodoEntity(
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
class _$_TodoEntity extends _TodoEntity {
  _$_TodoEntity(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'due_on') required this.dueOn,
      @JsonKey(name: 'status') required this.status})
      : super._();

  factory _$_TodoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TodoEntityFromJson(json);

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
    return 'TodoEntity(id: $id, title: $title, dueOn: $dueOn, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoEntity &&
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
  _$$_TodoEntityCopyWith<_$_TodoEntity> get copyWith =>
      __$$_TodoEntityCopyWithImpl<_$_TodoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoEntityToJson(
      this,
    );
  }
}

abstract class _TodoEntity extends TodoEntity {
  factory _TodoEntity(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'due_on') required final DateTime dueOn,
          @JsonKey(name: 'status') required final TodoStatus status}) =
      _$_TodoEntity;
  _TodoEntity._() : super._();

  factory _TodoEntity.fromJson(Map<String, dynamic> json) =
      _$_TodoEntity.fromJson;

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
  _$$_TodoEntityCopyWith<_$_TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
