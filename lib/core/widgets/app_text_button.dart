import 'package:doctors_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? paddingHorizontal;
  final double? paddingVertical;
  const AppTextButton({
    super.key,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.backgroundColor,
    this.borderRadius,
    this.buttonHeight,
    this.buttonWidth,
    this.paddingHorizontal,
    this.paddingVertical,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
            backgroundColor ?? AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: paddingHorizontal?.w ?? 12.w,
            vertical: paddingVertical?.h ?? 14.h,
          ),
        ),
        minimumSize: WidgetStatePropertyAll<Size>(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight?.h ?? 50.h,
          ),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
