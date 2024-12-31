import 'package:doctors_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme/theme_manager.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  final String initialRoute;
  const DocApp({
    super.key,
    required this.appRouter,
    required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Doc App',
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.lightTheme, // Light Theme
          darkTheme: ThemeManager.darkTheme, // Dark Theme
          themeMode: ThemeMode.light, // Auto-switch based on system settings
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: initialRoute,
        );
      },
    );
  }
}
