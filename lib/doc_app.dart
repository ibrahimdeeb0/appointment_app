import 'package:doctors_app/core/routing/app_router.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/constants.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
        // Routes.onBoardingScreen,
      ),
    );
  }
}
