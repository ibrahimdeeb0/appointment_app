import 'package:doctors_app/features/home/ui/routes.dart';
import 'package:doctors_app/features/login/ui/routes.dart';
import 'package:doctors_app/features/on_boarding/routes.dart';
import 'package:doctors_app/features/sign_up/ui/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    // onboarding Routes
    if (settings.name == OnboardingRoutes.onboarding) {
      return OnboardingRoutes.generateRoute(settings);
    }

    // Signup Routes
    if (settings.name == SignUpRoutes.signUp) {
      return SignUpRoutes.generateRoute(settings);
    }

    // Login Routes
    if (settings.name == LoginRoutes.login) {
      return LoginRoutes.generateRoute(settings);
    }

    // Home Routes
    if (settings.name == HomeRoutes.home) {
      return HomeRoutes.generateRoute(settings);
    }

    // Default: Undefined Route
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('IIIII No route defined for ${settings.name}'),
        ),
      ),
    );
  }
}
