import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:doctors_app/core/widgets/app_list_tile.dart';
import 'package:doctors_app/core/helpers/app_vertical_spacing.dart';

import '../../config/profile_tile_options.dart';
import 'view_profile_data_builder.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90.h),
      width: context.flexWidth(),
      decoration: ShapeDecoration(
        color: Theme.of(context).cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(26.0.r),
          ),
        ),
      ),
      child: Column(
        children: [
          const AppVerticalSpacing(height: 80),
          const ViewProfileDataBuilder(),
          //
          const AppVerticalSpacing(height: 16),
          ...ProfileOptionsConfig.profileOptions.map(
            (option) => AppListTile(
              onTap: ProfileOptionsConfig.handleOptionPress[option.type] != null
                  ? () => ProfileOptionsConfig.handleOptionPress[option.type]!
                      .onTap()
                  : null,
              title: option.title,
              leadingIconPath: option.iconPath,
            ),
          ),
        ],
      ),
    );
  }
}
