import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: AppColors.black,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.white,
        systemStatusBarContrastEnforced: true,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(color: AppColors.black, size: 20.h),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(
      labelSmall: TextStyle(
          fontSize: 12.sp, fontWeight: FontWeight.w300, color: AppColors.black),
      labelMedium: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.white),
      labelLarge: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColors.black),
      bodySmall: TextStyle(
          fontSize: 12.sp, fontWeight: FontWeight.w300, color: AppColors.black),
      displayLarge: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.bold, color: AppColors.black),
      displayMedium: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.greenColor),
      displaySmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.greenColor),
      headlineLarge: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.greenColor),
      headlineMedium: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.greenColor),
      headlineSmall: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.greenColor),
      titleLarge: TextStyle(
          fontSize: 30.sp, fontWeight: FontWeight.bold, color: AppColors.black),
      titleMedium: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
      titleSmall: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(
          color: AppColors.black, fontSize: 12.sp, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(
          color: AppColors.black, fontSize: 14.sp, fontWeight:FontWeight.bold),
    ),
  );
}
