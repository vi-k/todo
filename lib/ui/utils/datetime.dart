import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> _showupertinoDateTimePopup(
  BuildContext context, {
  required CupertinoDatePickerMode mode,
  DateTime? initialDate,
  required ValueChanged<DateTime> onDateTimeChanged,
}) =>
    showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoDatePicker(
            mode: mode,
            initialDateTime: initialDate,
            onDateTimeChanged: onDateTimeChanged,
          ),
        ),
      ),
    );

Future<void> chooseDate(
  BuildContext context, {
  DateTime? initialDate,
  required ValueChanged<DateTime> onDateChanged,
}) async {
  if (Platform.isIOS) {
    await _showupertinoDateTimePopup(
      context,
      mode: CupertinoDatePickerMode.date,
      initialDate: initialDate,
      onDateTimeChanged: onDateChanged,
    );
  } else {
    initialDate ??= DateTime.now();

    final date = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: initialDate.subtract(const Duration(days: 365)),
      lastDate: initialDate.add(const Duration(days: 3650)),
    );

    if (date != null) onDateChanged(date);
  }
}

Future<void> chooseTime(
  BuildContext context, {
  DateTime? initialTime,
  required ValueChanged<DateTime> onTimeChanged,
}) async {
  if (Platform.isIOS) {
    await _showupertinoDateTimePopup(
      context,
      mode: CupertinoDatePickerMode.time,
      initialDate: initialTime,
      onDateTimeChanged: onTimeChanged,
    );
  } else {
    initialTime ??= DateTime.now();

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initialTime),
    );

    if (time != null) {
      onTimeChanged(DateTime(
        initialTime.year,
        initialTime.month,
        initialTime.day,
        time.hour,
        time.minute,
      ));
    }
  }
}
