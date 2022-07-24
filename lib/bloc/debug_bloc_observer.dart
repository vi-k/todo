import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class DebugBlocObserver extends BlocObserver {
  DebugBlocObserver();

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    log('(create) ${bloc.state}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    log('(event) $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    log('(change) ${change.currentState} -> ${change.nextState}');
  }

  @override
  Future<void> onError(
    BlocBase bloc,
    Object error,
    StackTrace stackTrace,
  ) async {
    log(
      '${bloc.runtimeType} crashed: $error',
      error: error,
      stackTrace: stackTrace,
    );

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    log('(close) ${bloc.state})');
  }
}
