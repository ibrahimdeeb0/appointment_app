// import 'package:doctors_app/core/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/navigation/app_navigator_observer.dart';
import 'core/navigation/app_router.dart';
import 'core/theme/app_colors.dart';
import 'core/theme/theme_manager.dart';

class DocApp extends StatelessWidget {
  final String initialRoute;
  const DocApp({
    super.key,
    required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    final navigatorObserver = getIt<AppNavigatorObserver>();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Doc App',
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.lightTheme.copyWith(
            appBarTheme: ThemeManager.dynamicAppBarTheme(
              Colors.white,
              navigatorObserver.currentRoute,
            ),
          ),
          darkTheme: ThemeManager.darkTheme.copyWith(
            appBarTheme: ThemeManager.dynamicAppBarTheme(
              AppColors.darkBlue,
              navigatorObserver.currentRoute,
            ),
          ),
          themeMode: ThemeMode.light,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: initialRoute,
          navigatorObservers: [navigatorObserver],
        );
      },
    );
  }
}
