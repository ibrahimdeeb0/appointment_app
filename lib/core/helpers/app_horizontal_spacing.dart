import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppHorizontalSpacing extends StatelessWidget {
  final double width;

  const AppHorizontalSpacing({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
