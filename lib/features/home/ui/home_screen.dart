// import 'package:doctors_app/core/helpers/extensions.dart';
// import 'package:doctors_app/core/helpers/shared_pref_helper.dart';
// import 'package:doctors_app/features/login/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:doctors_app/core/helpers/spacing.dart';

import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_list/doctors_bloc_builder.dart';
import 'widgets/doctors_specialty_see_all.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/specializations_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic>? arguments;
  const HomeScreen({
    super.key,
    this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // signout button
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.pushReplacementNamed(LoginRoutes.login);
      //     SharedPrefHelper.clearAllData();
      //     SharedPrefHelper.clearAllSecuredData();
      //   },
      // ),
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
              verticalSpace(20),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(18),
              const SpecializationsBlocBuilder(),
              verticalSpace(8),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
