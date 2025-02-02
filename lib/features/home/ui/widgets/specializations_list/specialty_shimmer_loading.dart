import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/theme/app_colors.dart';

class SpecialtyShimmerLoading extends StatelessWidget {
  const SpecialtyShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                  ),
                ),
                14.spacingVertical,
                Shimmer.fromColors(
                  baseColor: AppColors.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 14.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: AppColors.lightGray,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
