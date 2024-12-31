import 'package:doctors_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/general_constants.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class ThemeManager {
  // Light Theme
  static ThemeData get lightTheme => ThemeData(
        fontFamily: AppFonts.inter,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.mainBlue,
          brightness: Brightness.light,
        ),
        primaryColor: AppColors.mainBlue,
        scaffoldBackgroundColor: AppColors.extraLightGray,
        appBarTheme: _appBarTheme(AppColors.mainBlue),
        textTheme: _textTheme(AppColors.darkBlue),
        buttonTheme: _buttonTheme(),
        inputDecorationTheme: _inputDecorationTheme(AppColors.lightGray),
        snackBarTheme: _snackBarTheme(AppColors.mainBlue),
        dialogTheme: _dialogTheme(AppColors.lightBlue),
        tabBarTheme: _tabBarTheme(AppColors.mainBlue, AppColors.gray),
        cardTheme: _cardTheme(AppColors.lightBlue),
      );

  // Dark Theme
  static ThemeData get darkTheme => ThemeData(
      fontFamily: AppFonts.inter,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.mainBlue,
        brightness: Brightness.dark,
      ),
      primaryColor: AppColors.darkBlue,
      scaffoldBackgroundColor: AppColors.lighterBlack,
      appBarTheme: _appBarTheme(AppColors.darkBlue),
      textTheme: _textTheme(AppColors.lightGray),
      buttonTheme: _buttonTheme(),
      inputDecorationTheme: _inputDecorationTheme(AppColors.darkBlue),
      snackBarTheme: _snackBarTheme(AppColors.darkBlue),
      dialogTheme: _dialogTheme(AppColors.lighterBlack),
      tabBarTheme: _tabBarTheme(AppColors.darkBlue, AppColors.lightGray),
      cardTheme: _cardTheme(AppColors.lighterBlack));

  // AppBar Theme
  static AppBarTheme _appBarTheme(Color backgroundColor) => AppBarTheme(
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle:
            AppTextStyles.heading24BlackBold.copyWith(color: Colors.white),
      );

  // Text Theme
  static TextTheme _textTheme(Color primaryTextColor) => TextTheme(
        displayLarge:
            AppTextStyles.heading32BlueBold.copyWith(color: primaryTextColor),
        headlineLarge:
            AppTextStyles.heading24BlackBold.copyWith(color: primaryTextColor),
        headlineMedium:
            AppTextStyles.heading24BlueBold.copyWith(color: primaryTextColor),
        bodyLarge:
            AppTextStyles.body18DarkBlueBold.copyWith(color: primaryTextColor),
        bodyMedium: AppTextStyles.body14DarkBlueRegular
            .copyWith(color: primaryTextColor),
        bodySmall:
            AppTextStyles.body14GrayRegular.copyWith(color: primaryTextColor),
        titleLarge:
            AppTextStyles.body18WhiteSemiBold.copyWith(color: primaryTextColor),
        titleMedium: AppTextStyles.caption13GrayRegular
            .copyWith(color: primaryTextColor),
        labelLarge: AppTextStyles.button16WhiteSemiBold,
        labelMedium: AppTextStyles.button14BlueSemiBold,
      );

  // Button Theme
  static ButtonThemeData _buttonTheme() => ButtonThemeData(
        buttonColor: AppColors.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        ),
        textTheme: ButtonTextTheme.primary,
      );

  // Input Decoration Theme
  static InputDecorationTheme _inputDecorationTheme(Color fillColor) =>
      InputDecorationTheme(
        filled: true,
        fillColor: fillColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          borderSide: const BorderSide(color: AppColors.lightGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          borderSide: const BorderSide(color: AppColors.mainBlue),
        ),
        hintStyle: AppTextStyles.body14GrayRegular,
      );

  // SnackBar Theme
  static SnackBarThemeData _snackBarTheme(Color backgroundColor) =>
      SnackBarThemeData(
        backgroundColor: backgroundColor,
        contentTextStyle:
            AppTextStyles.body14DarkBlueBold.copyWith(color: Colors.white),
        actionTextColor: Colors.white,
        behavior: SnackBarBehavior.floating,
      );

  // Dialog Theme
  static DialogTheme _dialogTheme(Color backgroundColor) => DialogTheme(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDialogBorderRadius),
        ),
        titleTextStyle: AppTextStyles.heading24BlackBold,
        contentTextStyle: AppTextStyles.body14DarkBlueRegular,
      );

  // TabBar Theme
  static TabBarTheme _tabBarTheme(Color selectedColor, Color unselectedColor) =>
      TabBarTheme(
        labelColor: selectedColor,
        unselectedLabelColor: unselectedColor,
        labelStyle: AppTextStyles.body14DarkBlueBold,
        unselectedLabelStyle: AppTextStyles.body14GrayRegular,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: selectedColor, width: 2.0.w),
        ),
      );

  // Card Theme
  static CardTheme _cardTheme(Color backgroundColor) => CardTheme(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        ),
        elevation: 4.0,
      );
}
