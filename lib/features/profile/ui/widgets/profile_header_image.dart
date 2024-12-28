import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';

class ProfileHeaderImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onEdit;

  const ProfileHeaderImage({
    super.key,
    required this.imagePath,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Align(
        alignment: AlignmentDirectional.topCenter,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 66.r,
              backgroundImage: AssetImage(imagePath),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                child: IconButton.filledTonal(
                  onPressed: onEdit,
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                      AppColors.lighterGray,
                    ),
                  ),
                  icon: SvgPicture.asset(
                    AssetsManager.profileEditIcon,
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
