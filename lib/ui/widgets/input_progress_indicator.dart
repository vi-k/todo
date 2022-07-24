import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/constants/app_colors.dart';

class InputProgressIndicator extends StatelessWidget {
  const InputProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(
              color: AppColors.inputProgressIndicator,
              strokeWidth: 2,
            ),
          ),
          Text(''),
        ],
      );
}
