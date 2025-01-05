import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/app_vertical_spacing.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/widgets/app_list_tile.dart';

import '../../config/profile_setting_options.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Column(
        children: [
          const AppVerticalSpacing(height: 32),
          ...ProfileSettingsConfig.settingOptions.map(
            (option) => AppListTile(
              onTap: () => ProfileSettingsConfig.settingHandlersTap[option.type]
                  ?.onTap(context),
              leadingIconPath: option.iconPath,
              title: option.title,
              iconWidth: 24.w,
              iconHeight: 24.h,
              verticalContentPadding: 6,
              titleStyle: option.type == SettingType.logout
                  ? AppTextStyles.body14BlueRegular.copyWith(
                      color: AppColors.red,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
