import 'package:flutter/material.dart';

import 'package:doctors_app/core/theme/assets_manager.dart';
import 'upcoming_appointment_card.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UpcomingAppointmentCard(
          doctorName: 'Dr. John Doe',
          specialization: 'Cardiologist',
          date: '2023-10-15',
          time: '10:00 AM',
          onCancel: () {},
          onReschedule: () {},
          imagePath: AssetsManager.recommendationDoctorAvatar,
        ),
      ],
    );
  }
}
