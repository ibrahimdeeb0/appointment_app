import 'package:doctors_app/features/bottom_nav/ui/widgets/bottom_nav_screen.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget implements BottomNavScreen {
  const AppointmentScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Appointment'),
      // backgroundColor: Colors.green,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: Text('Appointment Screen Content'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }
}
