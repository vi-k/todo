part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.pending() = _Pending;

  const factory TodoState.saveInProgress() = _SaveInProgress;

  const factory TodoState.finished() = _Finished;

  const factory TodoState.error(AppException error) = _Error;
}
