import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/debug_bloc_observer.dart';
import 'package:todo/data/repositories/api_todos_repository.dart';
import 'package:todo/domain/services/app_service.dart';
import 'package:todo/ui/app.dart';

void main() {
  final dio = Dio();
  final todosRepository = ApiTodosRepository(dio);
  final appService = AppService(todosRepository);

  final appInitFuture = appInit();

  BlocOverrides.runZoned(
    () => runApp(
      App(
        appInitFuture: appInitFuture,
        appService: appService,
      ),
    ),
    blocObserver: !kDebugMode ? null : DebugBlocObserver(),
  );
}

Future<void> appInit() async {
  // Имитация инициализации.
  await Future<void>.delayed(const Duration(seconds: 2));
}
