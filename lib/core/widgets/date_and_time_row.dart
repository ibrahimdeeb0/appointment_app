import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateAndTimeRow extends StatelessWidget {
  final String date;
  final String time;

  const DateAndTimeRow({
    super.key,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          date,
          style: AppTextStyles.caption12GrayMedium,
        ),
        Container(
          color: AppColors.gray,
          width: 1.w,
          height: 12.h,
          margin: EdgeInsets.symmetric(horizontal: 6.w),
        ),
        Text(
          time,
          style: AppTextStyles.caption12GrayMedium,
        ),
      ],
    );
  }
}
