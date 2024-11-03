import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> name(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      routeName,
      predicate,
      arguments: arguments,
    );
  }

  void pop() => Navigator.pop(this);
}

extension Sizing on BuildContext {
  double flexHeight() => MediaQuery.sizeOf(this).height;
  double flexWidth() => MediaQuery.sizeOf(this).width;
}
