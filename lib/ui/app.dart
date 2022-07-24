import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/constants/app_strings.dart';
import 'package:todo/constants/app_values.dart';
import 'package:todo/domain/services/app_service.dart';
import 'package:todo/ui/pages/board_page.dart';
import 'package:todo/ui/pages/logo_page.dart';
import 'package:todo/ui/theme.dart';
import 'package:todo/ui/utils/navigator.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.appInitFuture,
    required this.appService,
  }) : super(key: key);

  final Future<void> appInitFuture;
  final AppService appService;

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AppService>.value(
            value: appService,
          ),
        ],
        child: MaterialApp(
          title: AppStrings.appName,
          theme: appTheme,
          home: _Content(
            appInitFuture: appInitFuture,
          ),
        ),
      );
}

class _Content extends StatefulWidget {
  const _Content({
    Key? key,
    required this.appInitFuture,
  }) : super(key: key);

  final Future<void> appInitFuture;

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  @override
  void initState() {
    super.initState();

    widget.appInitFuture.then<void>(
      (_) => appNavigatorPush(
        context,
        BoardPage.screen,
        remove: true,
        duration: AppValues.logoTransitionDuration,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => const LogoPage();
}
