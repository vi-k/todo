import 'package:flutter/material.dart';
import 'package:todo/constants/app_colors.dart';
import 'package:todo/constants/app_text_styles.dart';
import 'package:todo/constants/app_values.dart';

ThemeData get appTheme => ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      dividerTheme: const DividerThemeData(
        color: Colors.black12,
        space: 1,
        thickness: 1,
      ),
      tabBarTheme: const TabBarTheme(
        labelPadding: EdgeInsets.symmetric(
            vertical: AppValues.tabBarLabelVerticalPadding,
            horizontal: AppValues.tabBarLabelHorizontalPadding),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black26,
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
        ),
        indicatorSize: TabBarIndicatorSize.label,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(AppTextStyles.button),
          padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
          backgroundColor: MaterialStateProperty.all(Colors.green),
          elevation: MaterialStateProperty.all(0),
          // side: MaterialStateProperty.all(BorderSide()),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(AppValues.buttonsRadius),
              ),
            ),
          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.textField,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(AppValues.textFieldRadius),
          ),
        ),
        // errorBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: redAlertColor),
        //   borderRadius: const BorderRadius.all(
        //     Radius.circular(Values.textFieldRadius),
        //   ),
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: AppColors.error),
        //   borderRadius: const BorderRadius.all(
        //     Radius.circular(WidgetsValues.textFieldRadius),
        //   ),
        // ),
      ),
    );
