import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String specialty;
  const MessageCard({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25.w,
              backgroundColor: Colors.grey[300],
            ),
            10.spacingHorizontal,
            Flexible(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: AppTextStyles.body14DarkBlueSemiBold,
                      ),
                      Text(
                        time,
                        style: AppTextStyles.caption12GrayMedium,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        specialty,
                        style: AppTextStyles.caption12GrayMedium.copyWith(
                          fontSize: 11.sp,
                          color: AppColors.gray2,
                        ),
                      ),
                      Container(
                        color: AppColors.gray,
                        width: 1.w,
                        height: 12.h,
                        margin: EdgeInsets.symmetric(horizontal: 6.w),
                      ),
                      Text(
                        'RSUD Gatot Subroto',
                        style: AppTextStyles.caption12GrayMedium.copyWith(
                          fontSize: 11.sp,
                          color: AppColors.gray2,
                        ),
                      ),
                    ],
                  ),
                  8.spacingVertical,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          message,
                          style: AppTextStyles.caption13GrayRegular,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 1.h),
                        margin: EdgeInsetsDirectional.only(start: 6.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: AppColors.buttonPrimary,
                        ),
                        child: Text(
                          '4',
                          style: AppTextStyles.body14DarkBlueRegular.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        Divider(
          color: AppColors.lightGray,
          thickness: 2.h,
          height: 24.h,
        ),
      ],
    );
  }
}
