import 'package:todo/domain/models/remind.dart';
import 'package:todo/domain/models/repeat.dart';
import 'package:todo/domain/models/todo_filter.dart';

class AppStrings {
  static const String appName = 'Todo';
  static const String boardScreenTitle = 'Board';
  static const String addTaskScreenTitle = 'Add task';
  static const String editTaskScreenTitle = 'Edit task';
  static const String todoTitle = 'Title';
  static const String todoDeadline = 'Deadline';
  static const String todoStartTime = 'Start time';
  static const String todoEndTime = 'End time';
  static const String todoRemind = 'Remind';
  static const String todoRepeat = 'Repeat';
  static const String addTask = 'Add a task';
  static const String createTask = 'Create the task';
  static const String updateTask = 'Update the task';
  static const String dropDownSelect = 'Select';
  static const String todoFormEnterTitle = 'Please enter some text';
  static const String todoFormEnterDate = 'Please enter date';
  static const String todoFormEnterTime = 'Please enter time';
  static const String todoAdded = 'Task added succesfully';
  static const String todoDelete = 'Delete task?';
  static const String todoSavingError = 'Task saving error';
  static const String todoHasErrors = 'Check the entered data';
  static const String yes = 'Yes';
  static const String no = 'No';

  static const Map<TodoFilter, String> todoFiltersTitles = {
    TodoFilter.all: 'All',
    TodoFilter.completed: 'Completed',
    TodoFilter.uncompleted: 'Uncompleted',
    TodoFilter.withReminder: 'With reminder',
    TodoFilter.withRepetition: 'With repetition',
  };

  static const Map<Remind, String> remindTitles = {
    Remind.never: 'never',
    Remind.event: 'at the time of the event',
    Remind.m5: '5 minutes early',
    Remind.m10: '10 minutes early',
    Remind.m15: '15 minutes early',
    Remind.m30: '30 minutes early',
    Remind.h1: '1 hour early',
    Remind.h2: '2 hours early',
    Remind.d1: '1 day early',
    Remind.d2: '2 day early',
    Remind.w1: '1 week early',
  };

  static const Map<Repeat, String> repeatTitles = {
    Repeat.never: 'never',
    Repeat.d1: 'dayly',
    Repeat.w1: 'weekly',
    Repeat.m1: 'monthly',
    Repeat.y1: 'yearly',
  };
}
