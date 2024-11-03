import 'package:doctors_app/core/theming/styles.dart';
import 'package:doctors_app/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:doctors_app/features/on_boarding/widgets/doctor_image_and_text.dart';
import 'package:doctors_app/features/on_boarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DocLogoAndName(),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font14GreyRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.w),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
