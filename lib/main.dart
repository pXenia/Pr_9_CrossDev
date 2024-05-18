import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Coffee.dart';
import 'Desserts.dart';
import 'Snacks.dart';
import 'HomeScreen.dart';
import 'UserPreferences.dart';
import 'di/GetIt.dart';
import 'di/InheritedWidget.dart';

void main() {
  setup();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'coffee',
          builder: (BuildContext context, GoRouterState state) {
            return Coffee();
          },
        ),
        GoRoute(
          path: 'desserts',
          builder: (BuildContext context, GoRouterState state) {
            return const Desserts();
          },
        ),
        GoRoute(
          path: 'snacks',
          builder: (BuildContext context, GoRouterState state) {
            return Snacks();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final userPreferences = getIt<UserPreferences>();
    return UserPreferencesProvider(
      userPreferences: userPreferences,
      child: MaterialApp.router(
        routerConfig: _router,
      ),
    );
  }
}