import 'package:flutter/material.dart';
import 'package:projects/Big_apps/smart_shop_app/utils/consts/app_color.dart';

class AppTheme {
  static ThemeData themeData(
          {required bool isDarkTheme, required BuildContext context}) =>
      ThemeData(
        // primaryColor: Colors.blue,
        // accentColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: isDarkTheme
              ? AppColor.dartScaffoldColor
              : AppColor.lightScaffoldColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: isDarkTheme
            ? AppColor.dartScaffoldColor
            : AppColor.lightScaffoldColor,
        cardColor:
            isDarkTheme ? AppColor.darkCardColor : AppColor.lightCardColor,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      );
}
