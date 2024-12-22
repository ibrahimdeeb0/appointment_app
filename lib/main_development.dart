import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/doc_app.dart';
import 'package:doctors_app/features/login/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/constants.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'core/helpers/extensions.dart';
import 'features/bottom_nav/ui/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();

  // Ensure flutter_screenutil works correctly in release mode.
  await ScreenUtil.ensureScreenSize();

  // Check login status
  String initialRoute = await getInitialRoute();

  runApp(DocApp(
    appRouter: AppRouter(),
    initialRoute: initialRoute,
  ));
}

Future<String> getInitialRoute() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  // Return the initial route based on login status
  return !(userToken.isNullOrEmpty())
      ? BottomNavRoutes.bottomNav
      : LoginRoutes.login;
}
