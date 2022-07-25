import 'package:flutter/material.dart';
import 'package:todo/constants/app_values.dart';
import 'package:todo/domain/models/todo.dart';
import 'package:todo/ui/pages/todo_page.dart';
import 'package:todo/ui/utils/navigator.dart';
import 'package:todo/ui/widgets/todo_status_marker.dart';

class _Values {
  static const double horizontalDivider = 10;
  static const double verticalPadding = 15;
}

class TodoTile extends StatefulWidget {
  const TodoTile(
    this.todo, {
    super.key,
    this.search = '',
  }) : super();

  final Todo todo;
  final String search;

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  late List<TextSpan> _spans;

  @override
  void initState() {
    super.initState();

    respan();
  }

  // Выделяем вхождения строки поиска в заголовке.
  void respan() {
    final title = widget.todo.title.toLowerCase();
    final words = widget.search.toLowerCase().split(' ');
    final markers = List.filled(title.length, false);

    if (words.isEmpty) {
      _spans = [TextSpan(text: title)];

      return;
    }

    for (final word in words) {
      var index = 0;

      if (word.isEmpty) continue;

      while (true) {
        index = title.indexOf(word, index);
        if (index == -1) break;

        for (var i = 0; i < word.length; i++, index++) {
          markers[index] = true;
        }
      }
    }

    final spans = <TextSpan>[];
    var lastIndex = 0;
    var currentMarker = false;

    for (var i = 0; i <= markers.length; i++) {
      if (i == markers.length || markers[i] != currentMarker) {
        if (i != lastIndex) {
          spans.add(TextSpan(
            text: widget.todo.title.substring(lastIndex, i),
            style: TextStyle(
              color: Colors.black,
              fontWeight: currentMarker ? FontWeight.bold : FontWeight.normal,
            ),
          ));
        }

        if (i != markers.length) {
          lastIndex = i;
          currentMarker = markers[i];
        }
      }
    }

    _spans = spans;
  }

  @override
  void didUpdateWidget(covariant TodoTile oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.search != widget.search ||
        oldWidget.todo.title != widget.todo.title) {
      respan();
    }
  }

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => appNavigatorPush<void>(
          context,
          () => TodoPage.screen(initialTodo: widget.todo),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppValues.horizontalPadding,
            vertical: _Values.verticalPadding,
          ),
          child: Row(
            children: [
              TodoStatusMarker(widget.todo.status),
              const SizedBox(
                width: _Values.horizontalDivider,
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(children: _spans),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      );
}
