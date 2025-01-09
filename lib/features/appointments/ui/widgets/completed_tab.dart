import 'package:flutter/material.dart';

import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';

import 'appointment_card.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppointmentCard(
          title: 'Appointment done',
          titleColor: AppColors.lightGreen,
          date: 'Wed, 17 May',
          time: '08.30 AM',
          doctorName: 'Dr. Randy Wigwam',
          appointmentType: 'General Medical Checkup',
          doctorImagePath: AssetsManager.recommendationDoctorAvatar,
          rating: 4.8,
          reviews: 4279,
        ),
        AppointmentCard(
          title: 'Appointment done',
          titleColor: AppColors.lightGreen,
          date: 'Wed, 17 May',
          time: '08.30 AM',
          doctorName: 'Dr. Randy Wigwam',
          appointmentType: 'General Medical Checkup',
          doctorImagePath: AssetsManager.recommendationDoctorAvatar,
          rating: 4.8,
          reviews: 4279,
        ),
      ],
    );
  }
}
