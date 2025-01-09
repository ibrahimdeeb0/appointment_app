import 'package:flutter/material.dart';

import 'bottom_nav.dart';

class BottomNavRoutes {
  static const String bottomNav = '/bottomNav';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case bottomNav:
        return MaterialPageRoute(
          builder: (_) => const BottomNav(),
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
