import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class OnboardingRoutes {
  static const String onboarding = '/onboarding';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
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
