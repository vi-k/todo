import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/constants/app_values.dart';

class MyAppBarAction extends StatelessWidget {
  const MyAppBarAction({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) => IconTheme(
        data: const IconThemeData(
          size: AppValues.appBarActionsIconSize,
        ),
        child: IconButton(
          constraints: const BoxConstraints.tightFor(
            width: AppValues.appBarActionsSize,
            height: AppValues.appBarActionsSize,
          ),
          onPressed: onPressed,
          icon: icon,
        ),
      );
}
