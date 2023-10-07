import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/01.E-commerce_App_Tarek/util/app_color.dart';

class CustomTheme {
  static ThemeData? lightTheme() => ThemeData.light().copyWith(
      // Bg-body/abbBar/status
      scaffoldBackgroundColor: AppColor.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
      ),
      // Text () ///font Family....What
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: AppColor.blackColor,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: AppColor.blackColor,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: AppColor.blackColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: AppColor.blackColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: AppColor.blackColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          color: AppColor.blackColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: AppColor.blackColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          color: AppColor.blackColor,
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ),
      // TextFeild / Btn (ToDo: Shadow By Container)
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColor.whiteColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.errorColor),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.grayColor),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.grayColor),
          borderRadius: BorderRadius.circular(4),
        ),
        hintStyle: const TextStyle(
          color: AppColor.grayColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        labelStyle: const TextStyle(
          color: AppColor.grayColor,
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          foregroundColor: AppColor.whiteColor,
          padding: const EdgeInsets.all(16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),

        // bottomNavBar
        // Snack_bar
      ));
  static ThemeData? darkTheme() => ThemeData.dark();
}
