import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/helpers/spacing_extension.dart';
import 'package:doctors_app/features/bottom_nav/ui/widgets/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/home_cubit.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_list/doctors_bloc_builder.dart';
import 'widgets/doctors_specialty_see_all.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget implements BottomNavScreen {
  final Map<String, dynamic>? arguments;
  const HomeScreen({
    super.key,
    this.arguments,
  });

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return null;
  }

  @override
  Widget buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getSpecializations(),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            0.0,
          ),
          child: Column(
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              20.spacingVertical,
              const DoctorsSpecialtySeeAll(),
              18.spacingVertical,
              const SpecializationsBlocBuilder(),
              8.spacingVertical,
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Return body for standalone use
    return buildBody(context);
  }
}
