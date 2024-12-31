// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:doctors_app/core/constants/shared_pref_keys.dart';
import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:doctors_app/core/helpers/shared_pref_helper.dart';
import 'package:doctors_app/core/routing/app_router.dart';
import 'package:doctors_app/doc_app.dart';
import 'package:doctors_app/features/home/ui/routes.dart';
import 'package:doctors_app/features/login/ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    String initialRoute = await getInitialRoute();

    // Build our app and trigger a frame.
    await tester.pumpWidget(DocApp(
      appRouter: AppRouter(),
      initialRoute: initialRoute,
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

Future<String> getInitialRoute() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  // Return the initial route based on login status
  return !(userToken.isNullOrEmpty()) ? HomeRoutes.home : LoginRoutes.login;
}
