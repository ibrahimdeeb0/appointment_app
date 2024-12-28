import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/widgets/app_list_tile.dart';
import 'package:doctors_app/core/widgets/app_vertical_spacing.dart';

import 'profile_option.dart';

class ProfileBodyContents extends StatelessWidget {
  const ProfileBodyContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90.h),
      width: context.flexWidth(),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(26.0.r),
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 98.h),
          Text(
            'Ibrahim Salem',
            style: AppTextStyles.font20LightBlackSemiBold,
          ),
          const VerticalSpacing(height: 8),
          Text(
            'ibrahim.deep.dev@gmail.com',
            style: AppTextStyles.font14GrayRegular,
          ),
          //
          const VerticalSpacing(height: 16),
          ...profileOptions.map(
            (option) => AppListTile(
              title: option.title,
              leadingIconPath: option.iconPath,
              onTap: option.onTap,
            ),
          ),
        ],
      ),
    );
  }
}
