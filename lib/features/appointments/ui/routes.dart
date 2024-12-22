import 'package:flutter/material.dart';

import 'appointments_screen.dart';

class AppointmentRoutes {
  static const String appointmentScreen = '/appointmentScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case appointmentScreen:
        return MaterialPageRoute(
          builder: (_) => const AppointmentScreen(),
        );
      default:
        return _undefinedRoute(settings.name);
    }
  }

  static Route<dynamic> _undefinedRoute(String? routeName) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for $routeName'),
        ),
      ),
    );
  }
}
