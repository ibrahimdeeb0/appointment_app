import 'package:doctors_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_specialty_see_all.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_and_doctors_bloc_builder.dart';

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
              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
