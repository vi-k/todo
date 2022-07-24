import 'package:flutter/material.dart';
import 'package:todo/constants/app_values.dart';

Future<T?> appNavigatorPush<T>(
  BuildContext context,
  Widget Function() builder, {
  bool remove = false,
  Duration duration = AppValues.pageTransitionDuration,
}) =>
    Navigator.pushAndRemoveUntil<T>(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => builder(),
        transitionDuration: duration,
        transitionsBuilder: (context, animation, _, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
      (_) => !remove,
    );
