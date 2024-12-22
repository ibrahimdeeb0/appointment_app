import 'package:doctors_app/features/appointments/ui/routes.dart';
import 'package:doctors_app/features/bottom_nav/ui/routes.dart';
import 'package:doctors_app/features/home/ui/routes.dart';
import 'package:doctors_app/features/inbox/ui/routes.dart';
import 'package:doctors_app/features/login/ui/routes.dart';
import 'package:doctors_app/features/on_boarding/routes.dart';
import 'package:doctors_app/features/profile/ui/routes.dart';
import 'package:doctors_app/features/sign_up/ui/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
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

    // BottomNav Routes
    if (settings.name == BottomNavRoutes.bottomNav) {
      return BottomNavRoutes.generateRoute(settings);
    }

    // Appointment Routes
    if (settings.name == AppointmentRoutes.appointmentScreen) {
      return AppointmentRoutes.generateRoute(settings);
    }

    // Profile Routes
    if (settings.name == ProfileRoutes.profileScreen) {
      return ProfileRoutes.generateRoute(settings);
    }

    // Inbox Routes
    if (settings.name == InboxRoutes.inboxScreen) {
      return InboxRoutes.generateRoute(settings);
    }

    // Default: Undefined Route
    return null;
  }
}
