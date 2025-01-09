import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularImageContainer extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final double borderRadius;
  final Color? backgroundColor;
  final BoxFit fit;

  const CircularImageContainer({
    super.key,
    required this.imagePath,
    this.width = 80.0,
    this.height = 80.0,
    this.borderRadius = 12.0,
    this.backgroundColor = const Color(0xFFE0E0E0), // Default light gray color
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: Image.asset(
        imagePath,
        fit: fit,
      ),
    );
  }
}
