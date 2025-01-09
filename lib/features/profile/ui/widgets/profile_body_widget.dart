import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/widgets/app_list_tile.dart';

import '../../config/profile_tile_options.dart';
import 'view_profile_data_builder.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90.h),
      width: context.screenFlexWidth(),
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
          80.spacingVertical,
          const ViewProfileDataBuilder(),
          //
          16.spacingVertical,
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
