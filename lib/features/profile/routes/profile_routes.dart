import 'package:flutter/material.dart';
import '../ui/screens/profile_screen.dart';
import '../ui/screens/profile_setting_screen.dart';

class ProfileRoutes {
  static const String profileScreen = '/profileScreen';
  static const String profileSettingsScreen = '/profileScreen/settings/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      case profileSettingsScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileSettingScreen(),
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
