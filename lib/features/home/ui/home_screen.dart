import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/doctors_recommend_see_all.dart';
import 'widgets/doctors_specialty_list_view.dart';
import 'widgets/doctors_specialty_see_all.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(20.h),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(18),
              const DoctorsSpecialtyListView(),
              const DoctorsRecommendSeeAll(),
              verticalSpace(12),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
