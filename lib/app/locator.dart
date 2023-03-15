import 'package:get_it/get_it.dart';
import 'package:home_automation/services/navigation_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_automation/services/navigation_service.dart';
import 'package:go_router/go_router.dart';
import 'package:home_automation/Home_page.dart';
import 'package:home_automation/category_screen.dart';
import 'package:home_automation/event_screen.dart';
import 'package:home_automation/profile_screen.dart';
import 'package:home_automation/splash_screen.dart';
// import 'package:flutter/material.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  // locator.registerLazySingleton(() => AuthApi());

  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() =>  GoRouter(
    // navigatorKey: navigationState.navigatorKey,
      debugLogDiagnostics: true,
      initialLocation: '/CategoryScreen',
      routes: [
        GoRoute(
            path: '/',
            builder: (context, GoRouterState state) {
              return SplashScreen();
            },
            routes: [
              GoRoute(
                path: 'HomeScreen',
                builder: (context, GoRouterState state) {
                  return HomeScreen();
                },
              ),
              GoRoute(
                path: 'ProfileScreen',
                builder: (context, GoRouterState state) {
                  return ProfileScreen();
                },
              ),
            ]),
        GoRoute(
            path: '/CategoryScreen',
            builder: (context, GoRouterState state) {
              return CategoryScreen();
            },
            routes: [
              GoRoute(
                path: 'EventScreen/:events',
                builder: (context, GoRouterState state) {
                  return EventScreen(
                    text: '${state.params['events']}\n${state.queryParams}',
                  );
                },
              ),
            ]),
      ]));
}
