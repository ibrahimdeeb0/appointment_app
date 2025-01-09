import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';
import 'bottom_border.dart';

class AppListTile extends StatelessWidget {
  final String leadingIconPath;
  final String title;
  final VoidCallback? onTap;
  final double iconWidth;
  final double iconHeight;
  final Widget? trailing;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? tilePadding;
  final double horizontalContentPadding;
  final double verticalContentPadding;
  final bool showBottomBorder;

  const AppListTile({
    super.key,
    required this.leadingIconPath,
    required this.title,
    this.onTap,
    this.iconWidth = 40.0,
    this.iconHeight = 40.0,
    this.horizontalContentPadding = 24,
    this.verticalContentPadding = 12,
    this.tilePadding,
    this.trailing,
    this.backgroundColor,
    this.titleStyle,
    this.showBottomBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: tilePadding ?? EdgeInsets.zero,
          child: Material(
            child: ListTile(
              onTap: onTap,
              contentPadding: EdgeInsets.symmetric(
                horizontal: horizontalContentPadding.w,
                vertical: verticalContentPadding.h,
              ),
              tileColor:
                  backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
              leading: SvgPicture.asset(
                leadingIconPath,
                width: iconWidth.w,
                height: iconHeight.h,
              ),
              title: Text(
                title,
                style: titleStyle ?? AppTextStyles.body14DarkBlueRegular,
              ),
              trailing: trailing,
            ),
          ),
        ),
        if (showBottomBorder)
          BottomBorder(horizontalSpacing: horizontalContentPadding.w),
      ],
    );
  }
}
