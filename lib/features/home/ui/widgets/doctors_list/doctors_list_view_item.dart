import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:doctors_app/core/widgets/app_vertical_spacing.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';

import '../../../data/models/specializations_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final DoctorModel? doctorModel;
  const DoctorsListViewItem({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://w7.pngwing.com/pngs/104/498/png-transparent-physician-lia-doctor-of-medicine-doctors-and-nurses-miscellaneous-photography-service-thumbnail.png',
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: AppColors.lightGray,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const VerticalSpacing(height: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel?.name ?? 'Name',
                  style: AppTextStyles.body18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                const VerticalSpacing(height: 5),
                Text(
                  '${doctorModel?.degree} | ${doctorModel?.phone}',
                  style: AppTextStyles.caption12GrayMedium,
                ),
                const VerticalSpacing(height: 5),
                Text(
                  doctorModel?.email ?? 'Email',
                  style: AppTextStyles.caption12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/* 
ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              'assets/images/recommendation_doctor_avatar.png',
              height: 120.h,
              width: 110.w,
              fit: BoxFit.cover,
            ),
          ),

           */