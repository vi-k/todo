import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_strings.dart';
import 'package:todo/constants/app_text_styles.dart';
import 'package:todo/constants/app_values.dart';

class _Values {
  static const double hPadding = 12;
  static const double placeholderHeight = 60;
  static const double itemHeight = 40;
}

class MyDropDown<K extends Object> extends StatefulWidget {
  const MyDropDown({
    Key? key,
    required this.title,
    this.value,
    required this.values,
    this.placeholderBuilder,
    required this.itemBuilder,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final K? value;
  final Iterable<K> values;
  final Widget Function(BuildContext context)? placeholderBuilder;
  final Widget Function(BuildContext context, K value) itemBuilder;
  final void Function(K value) onChanged;

  @override
  State<MyDropDown> createState() => _MyDropDownState<K>();
}

class _MyDropDownState<K extends Object> extends State<MyDropDown<K>>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> animation;
  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;
  set isExpanded(bool value) {
    if (value != _isExpanded) {
      _isExpanded = value;
      _isExpanded
          ? _animationController.forward()
          : _animationController.reverse();
    }
  }

  void change(K value) {
    isExpanded = false;
    widget.onChanged(value);
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: AppValues.defaultAnimationDuration,
    )..value = _isExpanded ? 1 : 0;

    animation = CurvedAnimation(
      parent: _animationController,
      curve: AppValues.defaultAnimationCurve,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Provider<_MyDropDownState<K>>.value(
        value: this,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Title<K>(),
            Material(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppValues.textFieldRadius),
              ),
              color: AppColors.textField,
              clipBehavior: Clip.antiAlias,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(AppValues.textFieldRadius),
                ),
                child: AnimatedBuilder(
                    animation: animation,
                    builder: (context, _) => Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _Button<K>(),
                            _Items<K>(),
                          ],
                        )),
              ),
            ),
          ],
        ),
      );
}

class _Title<K extends Object> extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetState = Provider.of<_MyDropDownState<K>>(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: AppValues.textFieldTitleTop,
        bottom: AppValues.textFieldTitleBottom,
      ),
      child: Text(
        widgetState.widget.title,
        style: AppTextStyles.textFieldTitle,
      ),
    );
  }
}

class _Button<K extends Object> extends StatelessWidget {
  const _Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetState = Provider.of<_MyDropDownState<K>>(context);
    final widget = widgetState.widget;

    return InkWell(
      onTap: () {
        widgetState.isExpanded = !widgetState.isExpanded;
      },
      child: SizedBox(
        height: _Values.placeholderHeight,
        child: Padding(
          padding: const EdgeInsets.all(_Values.hPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRect(
                      child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        heightFactor: widgetState.animation.value,
                        child: widget.placeholderBuilder?.call(context) ??
                            const Text(AppStrings.dropDownSelect),
                      ),
                    ),
                    ClipRect(
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        heightFactor: 1 - widgetState.animation.value,
                        child: widget.value == null
                            ? const SizedBox.shrink()
                            : widget.itemBuilder(context, widget.value!),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.rotate(
                angle: -widgetState.animation.value * pi,
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Items<K extends Object> extends StatelessWidget {
  const _Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgetState = Provider.of<_MyDropDownState<K>>(context);

    return ClipRect(
      clipBehavior: Clip.antiAlias,
      child: Align(
        alignment: AlignmentDirectional.bottomStart,
        heightFactor: widgetState.animation.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(),
            for (final value in widgetState.widget.values)
              InkWell(
                onTap: () => widgetState.change(value),
                child: ColoredBox(
                  color: value == widgetState.widget.value
                      ? AppColors.dropDownActiveItem
                      : Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: _Values.hPadding,
                    ),
                    child: SizedBox(
                      height: _Values.itemHeight,
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: widgetState.widget.itemBuilder(context, value),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
