import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class AppListTile extends StatelessWidget {
  final String leadingIconPath;
  final String title;
  final VoidCallback? onTap;
  final double iconWidth;
  final double iconHeight;
  final Widget? trailing;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? tilePadding;

  const AppListTile({
    super.key,
    required this.leadingIconPath,
    required this.title,
    this.onTap,
    this.iconWidth = 40.0,
    this.iconHeight = 40.0,
    this.contentPadding,
    this.tilePadding,
    this.trailing,
    this.backgroundColor,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: tilePadding ?? EdgeInsets.zero,
      child: Material(
        color: backgroundColor ?? Colors.white,
        child: ListTile(
          onTap: onTap,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          leading: SvgPicture.asset(
            leadingIconPath,
            width: iconWidth.w,
            height: iconHeight.h,
          ),
          title: Text(
            title,
            style: titleStyle ?? AppTextStyles.body14DarkBlueRegular,
          ),
          shape: const Border(
            bottom: BorderSide(
              color: AppColors.lighterGray,
              width: 2.0,
            ),
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}
