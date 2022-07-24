import 'package:flutter/material.dart';
import 'package:todo/constants/app_text_styles.dart';
import 'package:todo/constants/app_values.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SizedBox(
          height: preferredSize.height,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppValues.horizontalPadding,
                  ),
                  child: Row(
                    children: [
                      if (Navigator.canPop(context))
                        IconButton(
                          onPressed: () => Navigator.maybePop(context),
                          icon: const Icon(Icons.arrow_back_ios_rounded),
                          iconSize: AppValues.appBarBackIconSize,
                        ),
                      Text(
                        title,
                        style: AppTextStyles.appBarTitle,
                      ),
                      if (actions != null) ...[
                        const Spacer(),
                        ...actions!,
                      ],
                    ],
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(AppValues.appBarHeight);
}

// class MyAppBar extends AppBar {
//   MyAppBar({
//     Key? key,
//     required String title,
//   }) : super(
//           key: key,
//           backgroundColor: Colors.white,
//           foregroundColor: Colors.black,
//           elevation: 0,
//           title: Text(title),
//           bottom: const PreferredSize(
//             preferredSize: Size.fromHeight(1),
//             child: Divider(),
//           ),
//         );
// }
