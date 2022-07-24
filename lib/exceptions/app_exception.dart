import 'dart:io';

import 'package:dio/dio.dart';

class AppException implements Exception {
  AppException(this.exception);

  final Exception? exception;

  factory AppException.fromDio(DioError exception, [AppException? def]) {
    switch (exception.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
      case DioErrorType.cancel:
        return AppNoConnectionException(exception);

      default:
        if (exception.error is IOException) {
          return AppException.fromIo(exception.error as IOException);
        }
    }

    return def ?? AppException(exception);
  }

  factory AppException.fromIo(IOException exception) {
    if (exception is HttpException || exception is SocketException) {
      return AppNoConnectionException(exception);
    }

    return AppException(exception);
  }

  @override
  String toString() =>
      // ignore: no_runtimetype_tostring
      '$runtimeType${exception == null ? '' : '(exception: ${exception.runtimeType})'}';
}

class AppNoConnectionException extends AppException {
  AppNoConnectionException(Exception? exception) : super(exception);
}

class AppLoadingException extends AppException {
  AppLoadingException(Exception? exception) : super(exception);
}

class AppSavingException extends AppException {
  AppSavingException(Exception? exception) : super(exception);
}
