
import 'package:flutter/material.dart';
import 'package:home_automation/event_screen.dart';
import 'package:home_automation/splash_screen.dart';

Route<RouteSettings> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {

    case SplashScreen.id:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );
    case EventScreen.id:
      return MaterialPageRoute(
        builder: (_) => const EventScreen(),
      );

      //  case BookingDispute.routeName:
      // return MaterialPageRoute(
      //   builder: (_) => const BookingDispute(),
      // );
      
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text('Unknown route')),
        ),
      );
  }
}
