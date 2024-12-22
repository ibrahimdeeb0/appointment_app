import 'package:flutter/material.dart';
import 'profile_screen.dart';

class ProfileRoutes {
  static const String profileScreen = '/profileScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
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
