import 'package:flutter/material.dart';
import 'screens/inbox_screen.dart';

class InboxRoutes {
  static const String inboxScreen = '/inboxScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case inboxScreen:
        return MaterialPageRoute(
          builder: (_) => const InboxScreen(),
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
