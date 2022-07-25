import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:todo/bloc/todo/todo_bloc.dart';
import 'package:todo/constants/app_strings.dart';
import 'package:todo/constants/app_values.dart';
import 'package:todo/domain/models/remind.dart';
import 'package:todo/domain/models/repeat.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/models/todo_status.dart';
import 'package:todo/domain/services/app_service.dart';
import 'package:todo/ui/utils/datetime.dart';
import 'package:todo/ui/widgets/input_progress_indicator.dart';
import 'package:todo/ui/widgets/my_app_bar.dart';
import 'package:todo/ui/widgets/my_app_bar_action.dart';
import 'package:todo/ui/widgets/my_drop_down.dart';
import 'package:todo/ui/widgets/my_text_field.dart';
import 'package:todo/utils/validators.dart' as validators;

class _Values {
  static const double timeFieldsDivider = 20;
  static const double bottomPadding = 20;
}

class TodoPage extends StatefulWidget {
  const TodoPage._({
    Key? key,
    this.initialTodo,
  }) : super(key: key);

  final Todo? initialTodo;

  static Widget screen({
    Key? key,
    Todo? initialTodo,
  }) =>
      BlocProvider(
        create: (context) => TodoBloc(context.read<AppService>()),
        child: TodoPage._(
          key: key,
          initialTodo: initialTodo,
        ),
      );

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController titleController;
  late final TextEditingController deadlineController;
  late final TextEditingController startTimeController;
  late final TextEditingController endTimeController;
  late final ValueNotifier<Remind> remindNotifier;
  late final ValueNotifier<Repeat> repeatNotifier;

  String? titleError;
  String? deadlineError;
  String? startTimeError;
  String? endTimeError;

  @override
  void initState() {
    super.initState();

    final todo = widget.initialTodo;
    final startTime = todo?.startTime ?? DateTime.now();

    titleController = TextEditingController(text: todo?.title ?? '');
    deadlineController =
        TextEditingController(text: DateFormat.yMd().format(startTime));
    startTimeController =
        TextEditingController(text: DateFormat.Hm().format(startTime));
    endTimeController = TextEditingController(
        text: todo?.endTime == null
            ? ''
            : DateFormat.Hm().format(todo!.endTime!));
    remindNotifier = ValueNotifier(todo?.remind ?? Remind.never);
    repeatNotifier = ValueNotifier(todo?.repeat ?? Repeat.never);
  }

  @override
  void dispose() {
    titleController.dispose();
    deadlineController.dispose();
    startTimeController.dispose();
    endTimeController.dispose();
    remindNotifier.dispose();
    repeatNotifier.dispose();

    super.dispose();
  }

  String? titleValidator(String? value) => validators.notEmptyValidator(value!)
      ? null
      : AppStrings.todoFormEnterTitle;

  String? dateValidator(String? value) =>
      validators.dateValidator(value!) ? null : AppStrings.todoFormEnterDate;

  String? timeValidator(String? value, {bool maybeEmpty = false}) =>
      validators.timeValidator(value!, maybeEmpty: maybeEmpty)
          ? null
          : AppStrings.todoFormEnterTime;

  Future<void> chooseDeadlineDate() async {
    final initialDate =
        validators.tryParseDate(deadlineController.text) ?? DateTime.now();

    await chooseDate(
      context,
      initialDate: initialDate,
      onDateChanged: (date) {
        deadlineController.text = DateFormat.yMd().format(date);
      },
    );
  }

  Future<void> chooseTodoTime(TextEditingController controller) async {
    final time = validators.tryParseTime(controller.text) ?? DateTime.now();

    await chooseTime(
      context,
      initialTime: time,
      onTimeChanged: (time) {
        controller.text = DateFormat.Hm().format(time);
      },
    );
  }

  void submit() {
    if (!formKey.currentState!.validate()) {
      context.read<TodoBloc>().add(const TodoEvent.delay());

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(AppStrings.todoHasErrors),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } else {
      final title = titleController.text;
      final deadline = validators.tryParseDate(deadlineController.text);
      final startTime = validators.tryParseTime(startTimeController.text);
      final endTime = validators.tryParseTime(endTimeController.text);

      final startDate = DateTime(
        deadline!.year,
        deadline.month,
        deadline.day,
        startTime!.hour,
        startTime.minute,
      );

      final endDate = endTime == null
          ? null
          : DateTime(
              deadline.year,
              deadline.month,
              deadline.day,
              endTime.hour,
              endTime.minute,
            );

      final todo = Todo(
        id: widget.initialTodo?.id ?? -1,
        title: title,
        startTime: startDate,
        endTime: endDate,
        remind: remindNotifier.value,
        repeat: repeatNotifier.value,
        status: widget.initialTodo?.status ?? TodoStatus.pending,
      );

      widget.initialTodo == null
          ? context.read<TodoBloc>().add(TodoEvent.create(todo))
          : context.read<TodoBloc>().add(TodoEvent.update(todo));
    }
  }

  Future<void> delete() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text(AppStrings.todoDelete),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text(AppStrings.no),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text(AppStrings.yes),
          ),
        ],
      ),
    );

    if (!mounted) return;

    if (ok == true) {
      context.read<TodoBloc>().add(TodoEvent.delete(widget.initialTodo!.id));
    }
  }

  @override
  Widget build(BuildContext context) => Provider<_TodoPageState>.value(
        value: this,
        child: BlocListener<TodoBloc, TodoState>(
          listener: (context, state) => state.whenOrNull<void>(
            finished: () async {
              if (widget.initialTodo == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(AppStrings.todoAdded),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }

              Navigator.pop(context);
            },
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${AppStrings.todoSavingError}: $error'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
          child: BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              print(state);

              return Scaffold(
                extendBody: true,
                appBar: MyAppBar(
                  title: widget.initialTodo == null
                      ? AppStrings.addTaskScreenTitle
                      : AppStrings.editTaskScreenTitle,
                  actions: [
                    if (widget.initialTodo != null)
                      MyAppBarAction(
                        icon: const Icon(Icons.delete_forever),
                        onPressed: delete,
                      ),
                  ],
                ),
                body: const _Form(),
                bottomNavigationBar: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppValues.horizontalPadding,
                    ),
                    child: state.maybeMap(
                      saveInProgress: (_) => const ElevatedButton(
                        onPressed: null,
                        child: InputProgressIndicator(),
                      ),
                      orElse: () => ElevatedButton(
                        onPressed: submit,
                        child: Text(widget.initialTodo == null
                            ? AppStrings.createTask
                            : AppStrings.updateTask),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
}

class _Form extends StatelessWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenState = Provider.of<_TodoPageState>(context);

    return Form(
      key: screenState.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppValues.horizontalPadding,
        ),
        child: ListView(
          children: [
            MyTextField(
              title: AppStrings.todoTitle,
              controller: screenState.titleController,
              validator: screenState.titleValidator,
            ),
            MyTextField(
              title: AppStrings.todoDeadline,
              controller: screenState.deadlineController,
              validator: screenState.dateValidator,
              button: IconButton(
                onPressed: screenState.chooseDeadlineDate,
                icon: const Icon(Icons.calendar_month),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: MyTextField(
                    title: AppStrings.todoStartTime,
                    controller: screenState.startTimeController,
                    validator: screenState.timeValidator,
                    button: IconButton(
                      onPressed: () => screenState
                          .chooseTodoTime(screenState.startTimeController),
                      icon: const Icon(Icons.access_time),
                    ),
                  ),
                ),
                const SizedBox(width: _Values.timeFieldsDivider),
                Expanded(
                  child: MyTextField(
                    title: AppStrings.todoEndTime,
                    controller: screenState.endTimeController,
                    validator: (value) =>
                        screenState.timeValidator(value, maybeEmpty: true),
                    button: IconButton(
                      onPressed: () => screenState
                          .chooseTodoTime(screenState.endTimeController),
                      icon: const Icon(Icons.access_time),
                    ),
                  ),
                ),
              ],
            ),
            ValueListenableBuilder<Remind>(
              valueListenable: screenState.remindNotifier,
              builder: (context, value, child) => MyDropDown<Remind>(
                title: AppStrings.todoRemind,
                value: value,
                values: Remind.values,
                itemBuilder: (context, value) =>
                    Text(AppStrings.remindTitles[value]!),
                onChanged: (value) => screenState.remindNotifier.value = value,
              ),
            ),
            ValueListenableBuilder<Repeat>(
              valueListenable: screenState.repeatNotifier,
              builder: (context, value, child) => MyDropDown<Repeat>(
                title: AppStrings.todoRepeat,
                value: value,
                values: Repeat.values,
                itemBuilder: (context, value) =>
                    Text(AppStrings.repeatTitles[value]!),
                onChanged: (value) => screenState.repeatNotifier.value = value,
              ),
            ),
            const SizedBox(
              height: _Values.bottomPadding,
            ),
          ],
        ),
      ),
    );
  }
}
