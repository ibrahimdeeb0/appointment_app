import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/widgets/date_and_time_row.dart';

class CancelOrCompletedRow extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String date;
  final String time;

  const CancelOrCompletedRow({
    super.key,
    required this.title,
    required this.titleColor,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.caption13BlueSemiBold.copyWith(
                color: titleColor,
              ),
            ),
            8.verticalSpace,
            DateAndTimeRow(
              date: date,
              time: time,
            ),
          ],
        ),
        const Icon(
          Icons.more_vert_rounded,
          color: AppColors.gray,
          size: 32,
        ),
      ],
    );
  }
}
