import 'package:doctors_app/core/helpers/spacing.dart';
import 'package:doctors_app/core/theming/app_colors.dart';
import 'package:doctors_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specializations_response_model.dart';

class SpecialtyListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  final String? iconPath;
  const SpecialtyListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
    required this.selectedIndex,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.lightBlue,
                    child: Image.asset(
                      iconPath ?? 'assets/images/man_doctor_europe.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.lightBlue,
                  child: Image.asset(
                    iconPath ?? 'assets/images/man_doctor_europe.png',
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: itemIndex == selectedIndex
                ? AppTextStyles.font14DarkBlueBold
                : AppTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
