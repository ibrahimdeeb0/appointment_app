import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomSheet {
  /// Standard Bottom Sheet (Fixed at the bottom)
  static void showStandard({
    required BuildContext context,
    required Widget content,
    Color? backgroundColor,
    double elevation = 8.0,
  }) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16.0.r),
            ),
            boxShadow: elevation > 0
                ? [BoxShadow(color: Colors.black12, blurRadius: elevation)]
                : [],
          ),
          child: content,
        );
      },
    );
  }

  /// Modal Bottom Sheet (Covers the screen partially or fully)
  static Future<void> showModal({
    required BuildContext context,
    required Widget content,
    String? title,
    bool isDismissible = true,
    bool enableDrag = true,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: backgroundColor ?? Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0.r),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: padding ?? MediaQuery.of(context).viewInsets,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              content,
            ],
          ),
        );
      },
    );
  }

  /// Draggable Bottom Sheet (User can drag up/down)
  static void showDraggable({
    required BuildContext context,
    required Widget Function(BuildContext, ScrollController) builder,
    double initialChildSize = 0.3,
    double minChildSize = 0.2,
    double maxChildSize = 0.8,
    Color? backgroundColor,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: backgroundColor ?? Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.0.r),
        ),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: initialChildSize,
          minChildSize: minChildSize,
          maxChildSize: maxChildSize,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: backgroundColor ?? Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16.0.r),
                ),
              ),
              child: builder(context, scrollController),
            );
          },
        );
      },
    );
  }
}
