import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_values.dart';
import 'package:todo/domain/models/todo_status.dart';

class TodoStatusMarker extends StatelessWidget {
  const TodoStatusMarker(
    this.todoStatus, {
    Key? key,
  }) : super(key: key);

  final TodoStatus todoStatus;

  @override
  Widget build(BuildContext context) => Container(
        height: AppValues.todoStatusMarkerSize,
        width: AppValues.todoStatusMarkerSize,
        decoration: BoxDecoration(
          color: todoStatus.map(
            pending: () => Colors.transparent,
            completed: () => AppColors.todoCompleted,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppValues.todoStatusMarkerRadius),
          ),
          border: todoStatus.map(
            pending: () => Border.all(
              color: AppColors.todoPending,
              width: AppValues.todoStatusMarkerThickness,
            ),
            completed: Border.new,
          ),
        ),
        child: const Icon(
          Icons.check,
          size: AppValues.todoStatusMarkerCheckSize,
          color: Colors.white,
        ),
      );
}
