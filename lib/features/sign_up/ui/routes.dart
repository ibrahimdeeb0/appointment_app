import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctors_app/core/di/dependency_injection.dart';

import '../logic/sign_up_cubit.dart';
import 'sign_up_screen.dart';

class SignUpRoutes {
  static const String signUp = '/signUp';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
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
