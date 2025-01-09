import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/helpers/font_weight_helper.dart';

/// A utility class for app test styles. Should not be instantiated.
class AppTextStyles {
  AppTextStyles._();

  //? Base Style
  static final TextStyle _baseStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.darkBlue,
  );

  //? Headings
  static TextStyle heading32BlueBold = _baseStyle.copyWith(
    fontSize: 32.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle heading24BlackBold = _baseStyle.copyWith(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle heading24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle heading20BlackBold = _baseStyle.copyWith(
    fontSize: 20.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  //? Body Text
  static TextStyle body18DarkBlueBold = _baseStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle body18DarkBlueSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle body18WhiteSemiBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle body18WhiteMedium = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle body14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.gray,
  );

  static TextStyle body14DarkBlueBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle body14DarkBlueSemiBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static final TextStyle body14DarkBlueRegular = _baseStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle body14BlueRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );

  //? Captions
  static TextStyle caption13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static final TextStyle caption13GrayRegular = _baseStyle.copyWith(
    fontSize: 13.sp,
    color: AppColors.gray,
  );

  static TextStyle caption12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle caption12GrayMedium = TextStyle(
    fontSize: 12.sp,
    color: AppColors.gray,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle caption12BlueRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle caption13DartBlueMedium = TextStyle(
    fontSize: 13.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  //? Buttons

  static TextStyle button16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle button16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );

  static final TextStyle button14BlueSemiBold = _baseStyle.copyWith(
    color: AppColors.mainBlue,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static final TextStyle button12BlueSemiBold = _baseStyle.copyWith(
    color: AppColors.mainBlue,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  static final TextStyle button12WhiteSemiBold = _baseStyle.copyWith(
    color: Colors.white,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  //? Custom Styles
  static final TextStyle profileTitle = _baseStyle.copyWith(
    fontSize: 20.sp,
    color: AppColors.lighterBlack,
    fontWeight: FontWeightHelper.semiBold,
  );

  //? TabBar Text Style
  static final TextStyle tabBarTextStyle = _baseStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
}
