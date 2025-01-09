import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/app_text_styles.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';
import 'package:doctors_app/features/bottom_nav/ui/widgets/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/cancelled_tab.dart';
import '../widgets/completed_tab.dart';
import '../widgets/upcoming_tab.dart';

class AppointmentScreen extends StatelessWidget implements BottomNavScreen {
  const AppointmentScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Appointment'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AssetsManager.inboxSearchIcon,
            width: 24.w,
            colorFilter: const ColorFilter.mode(
              AppColors.darkBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: ColoredBox(
        color: AppColors.backgroundSecondary,
        child: Column(
          children: [
            // TabBar
            ColoredBox(
              color: Colors.white,
              child: TabBar(
                labelColor: AppColors.buttonPrimary,
                labelStyle: AppTextStyles.tabBarTextStyle,
                unselectedLabelColor: AppColors.gray2,
                unselectedLabelStyle: AppTextStyles.tabBarTextStyle,
                indicatorColor: AppColors.buttonPrimary,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 5.0,
                dividerColor: AppColors.lightGray,
                dividerHeight: 3.0,
                tabs: const [
                  Tab(text: 'Upcoming'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
                ],
              ),
            ),
            //
            24.spacingVertical,
            // TabBarView to show content
            const Expanded(
              child: TabBarView(
                children: [
                  UpcomingTab(),
                  CompletedTab(),
                  CancelledTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }
}
