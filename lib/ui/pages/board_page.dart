import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:todo/bloc/todos/todos_bloc.dart';
import 'package:todo/constants/app_strings.dart';
import 'package:todo/constants/app_values.dart';
import 'package:todo/domain/models/remind.dart';
import 'package:todo/domain/models/repeat.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/domain/models/todo_filter.dart';
import 'package:todo/domain/models/todo_status.dart';
import 'package:todo/domain/services/app_service.dart';
import 'package:todo/exceptions/app_exception.dart';
import 'package:todo/ui/pages/todo_page.dart';
import 'package:todo/ui/utils/navigator.dart';
import 'package:todo/ui/widgets/my_app_bar.dart';
import 'package:todo/ui/widgets/my_app_bar_action.dart';
import 'package:todo/ui/widgets/my_text_field.dart';
import 'package:todo/ui/widgets/todo_tile.dart';

class _Values {
  static const double systemMessageVerticalDivider = 20;
  static const double searchVerticalPadding = 10;
}

class BoardPage extends StatefulWidget {
  const BoardPage._({Key? key}) : super(key: key);

  static Widget screen() => BlocProvider(
        create: (context) =>
            TodosBloc(context.read<AppService>())..add(const TodosEvent.load()),
        child: const BoardPage._(),
      );

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController searchAnimationController;
  late final Animation<double> searchAnimation;
  late final ValueNotifier<String> searchNotifier;
  late final ValueNotifier<bool> showSearchNotifier;

  bool get showSearch => showSearchNotifier.value;
  set showSearch(bool value) {
    if (value != showSearchNotifier.value) {
      showSearchNotifier.value = value;
      value
          ? searchAnimationController.forward()
          : searchAnimationController.reverse();
    }
  }

  @override
  void initState() {
    super.initState();

    searchAnimationController = AnimationController(
      vsync: this,
      duration: AppValues.defaultAnimationDuration,
    );

    searchAnimation = CurvedAnimation(
      parent: searchAnimationController,
      curve: AppValues.defaultAnimationCurve,
    );

    searchNotifier = ValueNotifier('');
    showSearchNotifier = ValueNotifier(false);
  }

  @override
  void dispose() {
    searchAnimationController.dispose();
    searchNotifier.dispose();

    super.dispose();
  }

  List<Todo> filter(List<Todo> todos, TodoFilter filter, String search) {
    var filteredTodos = todos.where(
      (todo) => filter.map(
        all: () => true,
        completed: () => todo.status == TodoStatus.completed,
        uncompleted: () => todo.status == TodoStatus.pending,
        withReminder: () => todo.remind != Remind.never,
        withRepetition: () => todo.repeat != Repeat.never,
      ),
    );

    if (search.isNotEmpty) {
      final words = search.toLowerCase().split(' ');

      filteredTodos = filteredTodos.where((todo) => words.any((word) =>
          word.isNotEmpty && todo.title.toLowerCase().contains(word)));
    }

    return List.unmodifiable(filteredTodos);
  }

  @override
  Widget build(BuildContext context) => Provider<_BoardPageState>.value(
        value: this,
        child: Scaffold(
          extendBody: true,
          appBar: MyAppBar(
            title: AppStrings.boardScreenTitle,
            actions: [
              MyAppBarAction(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch = !showSearch;
                },
              ),
              MyAppBarAction(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              MyAppBarAction(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
          body: const _Content(),
          bottomNavigationBar: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppValues.horizontalPadding,
              ),
              child: ElevatedButton(
                onPressed: () => appNavigatorPush<void>(
                  context,
                  TodoPage.screen,
                ),
                child: const Text(AppStrings.addTask),
              ),
            ),
          ),
        ),
      );
}

class _Content extends StatelessWidget {
  const _Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: TodoFilter.values.length,
        child: Column(
          children: [
            const _Search(),
            const _TabBar(),
            const Divider(),
            Expanded(
              child: BlocBuilder<TodosBloc, TodosState>(
                builder: (context, state) => state.when(
                  initial: SizedBox.shrink,
                  loadInProgress: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  data: (todos) => TabBarView(
                    children: [
                      for (final todoFilter in TodoFilter.values)
                        _Todos(todoFilter),
                    ],
                  ),
                  error: (error) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppValues.horizontalPadding,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          error is AppNoConnectionException
                              ? Icons.wifi_off
                              : Icons.error,
                          size: AppValues.systemIconSize,
                        ),
                        const SizedBox(
                          height: _Values.systemMessageVerticalDivider,
                        ),
                        Text(
                          error.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class _Search extends StatefulWidget {
  const _Search({Key? key}) : super(key: key);

  @override
  State<_Search> createState() => _SearchState();
}

class _SearchState extends State<_Search> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenState = Provider.of<_BoardPageState>(context);

    return AnimatedBuilder(
      animation: screenState.searchAnimation,
      builder: (context, _) => ClipRect(
        child: Align(
          alignment: AlignmentDirectional.bottomStart,
          heightFactor: screenState.searchAnimation.value,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppValues.horizontalPadding,
              vertical: _Values.searchVerticalPadding,
            ),
            child: MyTextField(
              onChanged: (value) {
                screenState.searchNotifier.value = value;
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => TabBar(
        padding: const EdgeInsets.symmetric(
          horizontal: AppValues.horizontalPadding -
              AppValues.tabBarLabelHorizontalPadding,
        ),
        isScrollable: true,
        tabs: [
          for (final todoFilter in TodoFilter.values)
            Text(
              AppStrings.todoFiltersTitles[todoFilter]!,
            ),
        ],
      );
}

class _Todos extends StatelessWidget {
  const _Todos(
    this.todoFilter, {
    Key? key,
  }) : super(key: key);

  final TodoFilter todoFilter;

  @override
  Widget build(BuildContext context) {
    final screenState = Provider.of<_BoardPageState>(context);

    return BlocBuilder<TodosBloc, TodosState>(
      builder: (_, state) => ValueListenableBuilder<bool>(
        valueListenable: screenState.showSearchNotifier,
        builder: (_, showSearch, __) => ValueListenableBuilder<String>(
          valueListenable: screenState.searchNotifier,
          builder: (_, search, __) {
            var todos = state.whenOrNull(data: (todos) => todos)!;
            final s = showSearch ? search : '';
            todos = screenState.filter(
              todos,
              todoFilter,
              s,
            );

            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) => TodoTile(
                todos[index],
                key: ValueKey(todos[index].id),
                search: s,
              ),
            );
          },
        ),
      ),
    );
  }
}
