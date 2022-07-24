part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.initial() = _Initial;

  const factory TodosState.loadInProgress() = _LoadInProgress;

  const factory TodosState.data(List<Todo> todos) = _Data;

  const factory TodosState.error(AppException error) = _Error;
}
