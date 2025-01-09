import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDialog {
  /// Generic Dialog with Customizable Content
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required Widget content,
    List<Widget>? actions,
    bool barrierDismissible = true,
    Color? backgroundColor,
    EdgeInsets? contentPadding,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Padding(
            padding: contentPadding ?? EdgeInsets.all(16.0.r),
            child: content,
          ),
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0.r),
          ),
          actions: actions,
        );
      },
    );
  }

  /// Confirmation Dialog with Yes/No Actions
  static Future<bool> showConfirmation({
    required BuildContext context,
    required String title,
    required String message,
    String confirmText = 'Yes',
    String cancelText = 'No',
    Color? confirmColor,
    Color cancelColor = Colors.red,
  }) async {
    final result = await show<bool>(
      context: context,
      title: title,
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          style: TextButton.styleFrom(foregroundColor: cancelColor),
          child: Text(cancelText),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: ElevatedButton.styleFrom(backgroundColor: confirmColor),
          child: Text(
            confirmText,
            style: AppTextStyles.button16WhiteMedium,
          ),
        ),
      ],
    );
    return result ?? false;
  }

  /// Custom Full-Screen Dialog
  static Future<T?> showFullScreen<T>({
    required BuildContext context,
    required Widget content,
    Color? backgroundColor,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
          backgroundColor: backgroundColor ?? Colors.white,
          child: SafeArea(
            child: content,
          ),
        );
      },
    );
  }
}
