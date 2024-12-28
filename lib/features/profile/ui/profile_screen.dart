import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';

import '../../bottom_nav/ui/widgets/bottom_nav_screen.dart';
import 'widgets/profile_body_contents.dart';
import 'widgets/profile_header_image.dart';

class ProfileScreen extends StatelessWidget implements BottomNavScreen {
  const ProfileScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Profile',
        style: AppTextStyles.font18WhiteSemiBold,
      ),
      backgroundColor: AppColors.mainBlue,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AssetsManager.profileEditIcon,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Container(
      color: AppColors.mainBlue,
      child: Stack(
        children: [
          // body
          const ProfileBodyContents(),
          // Profile Header Image
          ProfileHeaderImage(
            onEdit: () {
              // Handle edit action
            },
            imagePath: AssetsManager.profileHeaderImg,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }
}
