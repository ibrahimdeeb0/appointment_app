import 'package:doctors_app/core/theme/app_colors.dart';
import 'package:doctors_app/core/theme/assets_manager.dart';

import 'package:flutter/material.dart';

import 'appointment_card.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppointmentCard(
          title: 'Appointment Cancelled',
          titleColor: AppColors.red,
          date: 'Wed, 17 May',
          time: '08.30 AM',
          doctorName: 'Dr. Randy Wigwam',
          appointmentType: 'General Medical Checkup',
          doctorImagePath: AssetsManager.recommendationDoctorAvatar,
          rating: 4.8,
          reviews: 4279,
        ),
        AppointmentCard(
          title: 'Appointment Cancelled',
          titleColor: AppColors.red,
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
