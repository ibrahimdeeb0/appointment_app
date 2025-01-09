import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/widgets/circular_image_container.dart';
import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';

import '../../../../core/widgets/date_and_time_row.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String date;
  final String time;
  final VoidCallback onCancel;
  final VoidCallback onReschedule;
  final String imagePath;

  const UpcomingAppointmentCard({
    required this.doctorName,
    required this.specialization,
    required this.date,
    required this.time,
    required this.onCancel,
    required this.onReschedule,
    required this.imagePath,
    super.key,
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
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              CircularImageContainer(
                imagePath: imagePath,
              ),
              // Info
              16.spacingHorizontal,
              SizedBox(
                width: 154.w,
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
                      specialization,
                      style: AppTextStyles.caption12GrayMedium,
                    ),
                    8.spacingVertical,
                    DateAndTimeRow(
                      date: date,
                      time: time,
                    ),
                  ],
                ),
              ),
              // Message Btn
              12.spacingHorizontal,
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetsManager.bottomNavInbox,
                  colorFilter: const ColorFilter.mode(
                    AppColors.mainBlue,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2.0,
            color: AppColors.lightGray,
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: context.screenFlexWidth() * 0.42,
                child: OutlinedButton(
                  onPressed: onCancel,
                  child: Text(
                    'Cancel Appointment',
                    style: AppTextStyles.button12BlueSemiBold,
                  ),
                ),
              ),
              SizedBox(
                width: context.screenFlexWidth() * 0.35,
                child: ElevatedButton(
                  onPressed: onReschedule,
                  child: Text(
                    'Reschedule',
                    style: AppTextStyles.button12WhiteSemiBold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
