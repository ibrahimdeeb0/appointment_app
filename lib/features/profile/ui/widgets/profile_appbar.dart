import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';

import '../../routes/profile_routes.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.brightness == Brightness.light
          ? AppColors.mainBlue
          : AppColors.lighterBlack,
      title: Text(
        'Profile',
        style: AppTextStyles.body18WhiteSemiBold,
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.pushNamed(ProfileRoutes.profileSettingsScreen);
          },
          icon: SvgPicture.asset(
            AssetsManager.profileSettingsIcon,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ],
    );
  }
}
