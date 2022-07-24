// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() saveInProgress,
    required TResult Function() finished,
    required TResult Function(AppException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class _$$_PendingCopyWith<$Res> {
  factory _$$_PendingCopyWith(
          _$_Pending value, $Res Function(_$_Pending) then) =
      __$$_PendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PendingCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$_PendingCopyWith<$Res> {
  __$$_PendingCopyWithImpl(_$_Pending _value, $Res Function(_$_Pending) _then)
      : super(_value, (v) => _then(v as _$_Pending));

  @override
  _$_Pending get _value => super._value as _$_Pending;
}

/// @nodoc

class _$_Pending implements _Pending {
  const _$_Pending();

  @override
  String toString() {
    return 'TodoState.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Pending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() saveInProgress,
    required TResult Function() finished,
    required TResult Function(AppException error) error,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements TodoState {
  const factory _Pending() = _$_Pending;
}

/// @nodoc
abstract class _$$_SaveInProgressCopyWith<$Res> {
  factory _$$_SaveInProgressCopyWith(
          _$_SaveInProgress value, $Res Function(_$_SaveInProgress) then) =
      __$$_SaveInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveInProgressCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res>
    implements _$$_SaveInProgressCopyWith<$Res> {
  __$$_SaveInProgressCopyWithImpl(
      _$_SaveInProgress _value, $Res Function(_$_SaveInProgress) _then)
      : super(_value, (v) => _then(v as _$_SaveInProgress));

  @override
  _$_SaveInProgress get _value => super._value as _$_SaveInProgress;
}

/// @nodoc

class _$_SaveInProgress implements _SaveInProgress {
  const _$_SaveInProgress();

  @override
  String toString() {
    return 'TodoState.saveInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() saveInProgress,
    required TResult Function() finished,
    required TResult Function(AppException error) error,
  }) {
    return saveInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
  }) {
    return saveInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return saveInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
  }) {
    return saveInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(this);
    }
    return orElse();
  }
}

abstract class _SaveInProgress implements TodoState {
  const factory _SaveInProgress() = _$_SaveInProgress;
}

/// @nodoc
abstract class _$$_FinishedCopyWith<$Res> {
  factory _$$_FinishedCopyWith(
          _$_Finished value, $Res Function(_$_Finished) then) =
      __$$_FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FinishedCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$_FinishedCopyWith<$Res> {
  __$$_FinishedCopyWithImpl(
      _$_Finished _value, $Res Function(_$_Finished) _then)
      : super(_value, (v) => _then(v as _$_Finished));

  @override
  _$_Finished get _value => super._value as _$_Finished;
}

/// @nodoc

class _$_Finished implements _Finished {
  const _$_Finished();

  @override
  String toString() {
    return 'TodoState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() saveInProgress,
    required TResult Function() finished,
    required TResult Function(AppException error) error,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements TodoState {
  const factory _Finished() = _$_Finished;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({AppException error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final AppException error;

  @override
  String toString() {
    return 'TodoState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() saveInProgress,
    required TResult Function() finished,
    required TResult Function(AppException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? saveInProgress,
    TResult Function()? finished,
    TResult Function(AppException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pending value) pending,
    required TResult Function(_SaveInProgress value) saveInProgress,
    required TResult Function(_Finished value) finished,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pending value)? pending,
    TResult Function(_SaveInProgress value)? saveInProgress,
    TResult Function(_Finished value)? finished,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoState {
  const factory _Error(final AppException error) = _$_Error;

  AppException get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) create,
    required TResult Function(Todo todo) update,
    required TResult Function(int todoId) delete,
    required TResult Function() delay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Delay value) delay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, (v) => _then(v as _$_Create));

  @override
  _$_Create get _value => super._value as _$_Create;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$_Create(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.create(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Create &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      __$$_CreateCopyWithImpl<_$_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) create,
    required TResult Function(Todo todo) update,
    required TResult Function(int todoId) delete,
    required TResult Function() delay,
  }) {
    return create(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
  }) {
    return create?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Delay value) delay,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements TodoEvent {
  const factory _Create(final Todo todo) = _$_Create;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$_Update(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.update(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) create,
    required TResult Function(Todo todo) update,
    required TResult Function(int todoId) delete,
    required TResult Function() delay,
  }) {
    return update(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
  }) {
    return update?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Delay value) delay,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TodoEvent {
  const factory _Update(final Todo todo) = _$_Update;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  $Res call({int todoId});
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, (v) => _then(v as _$_Delete));

  @override
  _$_Delete get _value => super._value as _$_Delete;

  @override
  $Res call({
    Object? todoId = freezed,
  }) {
    return _then(_$_Delete(
      todoId == freezed
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.todoId);

  @override
  final int todoId;

  @override
  String toString() {
    return 'TodoEvent.delete(todoId: $todoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            const DeepCollectionEquality().equals(other.todoId, todoId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoId));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) create,
    required TResult Function(Todo todo) update,
    required TResult Function(int todoId) delete,
    required TResult Function() delay,
  }) {
    return delete(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
  }) {
    return delete?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Delay value) delay,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TodoEvent {
  const factory _Delete(final int todoId) = _$_Delete;

  int get todoId;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DelayCopyWith<$Res> {
  factory _$$_DelayCopyWith(_$_Delay value, $Res Function(_$_Delay) then) =
      __$$_DelayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DelayCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$$_DelayCopyWith<$Res> {
  __$$_DelayCopyWithImpl(_$_Delay _value, $Res Function(_$_Delay) _then)
      : super(_value, (v) => _then(v as _$_Delay));

  @override
  _$_Delay get _value => super._value as _$_Delay;
}

/// @nodoc

class _$_Delay implements _Delay {
  const _$_Delay();

  @override
  String toString() {
    return 'TodoEvent.delay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Delay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) create,
    required TResult Function(Todo todo) update,
    required TResult Function(int todoId) delete,
    required TResult Function() delay,
  }) {
    return delay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
  }) {
    return delay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? create,
    TResult Function(Todo todo)? update,
    TResult Function(int todoId)? delete,
    TResult Function()? delay,
    required TResult orElse(),
  }) {
    if (delay != null) {
      return delay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
    required TResult Function(_Delay value) delay,
  }) {
    return delay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
  }) {
    return delay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    TResult Function(_Delay value)? delay,
    required TResult orElse(),
  }) {
    if (delay != null) {
      return delay(this);
    }
    return orElse();
  }
}

abstract class _Delay implements TodoEvent {
  const factory _Delay() = _$_Delay;
}
