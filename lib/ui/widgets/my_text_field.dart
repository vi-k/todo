import 'package:flutter/material.dart';
import 'package:todo/constants/app_text_styles.dart';
import 'package:todo/constants/app_values.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.title,
    this.controller,
    this.validator,
    this.button,
    this.onChanged,
  }) : super(key: key);

  final String? title;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final Widget? button;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(
                top: AppValues.textFieldTitleTop,
                bottom: AppValues.textFieldTitleBottom,
              ),
              child: Text(
                title!,
                style: AppTextStyles.textFieldTitle,
              ),
            ),
          TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              suffixIcon: button,
            ),
            onChanged: onChanged,
          ),
        ],
      );
}
