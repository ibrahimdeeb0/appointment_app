import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';
import 'package:doctors_app/core/widgets/circular_image_container.dart';

import 'cancel_or_completed_row.dart';

class AppointmentCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String date;
  final String time;
  final String doctorName;
  final String appointmentType;
  final String doctorImagePath;
  final double rating;
  final int reviews;

  const AppointmentCard({
    super.key,
    required this.title,
    required this.titleColor,
    required this.date,
    required this.time,
    required this.doctorName,
    required this.appointmentType,
    required this.doctorImagePath,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenFlexWidth(),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      margin: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        bottom: 20.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGray.withOpacity(0.5),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Row
          CancelOrCompletedRow(
            title: title,
            titleColor: titleColor,
            date: date,
            time: time,
          ),
          // Divider
          Divider(
            color: AppColors.lightGray,
            height: 32.h,
            thickness: 2.w,
          ),
          // Doctor Info Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularImageContainer(
                imagePath: doctorImagePath,
              ),
              16.spacingHorizontal,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: AppTextStyles.body18DarkBlueBold,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    8.spacingVertical,
                    Text(
                      appointmentType,
                      style: AppTextStyles.caption12GrayMedium,
                    ),
                    8.spacingVertical,
                    Row(
                      children: [
                        SvgPicture.asset(AssetsManager.starRate),
                        4.spacingHorizontal,
                        Text(
                          rating.toString(),
                          style: AppTextStyles.caption12GrayMedium,
                        ),
                        4.spacingHorizontal,
                        Text(
                          '($reviews reviews)',
                          style: AppTextStyles.caption12GrayMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
