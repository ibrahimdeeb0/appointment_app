import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  String? currentRoute;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    currentRoute = route.settings.name;
    super.didPush(route, previousRoute);
  }
}