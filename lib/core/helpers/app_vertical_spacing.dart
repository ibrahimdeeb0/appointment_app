import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppVerticalSpacing extends StatelessWidget {
  final double height;

  const AppVerticalSpacing({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h);
  }
}
