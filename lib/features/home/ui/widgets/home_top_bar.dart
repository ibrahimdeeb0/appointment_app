import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Ibrahim!',
              style: AppTextStyles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: AppTextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.lighterGray),
          ),
          icon: SvgPicture.asset(
            'assets/svgs/notifications.svg',
            width: 32.w,
          ),
        ),
      ],
    );
  }
}
