import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_automation/app/locator.dart';
import 'package:home_automation/services/navigation_service.dart';
import 'package:go_router/go_router.dart';
import 'package:home_automation/Home_page.dart';
import 'package:home_automation/category_screen.dart';
import 'package:home_automation/event_screen.dart';
import 'package:home_automation/profile_screen.dart';
import 'package:home_automation/splash_screen.dart';
import 'package:flutter/material.dart';

final navigationService = Provider((ref) => NavigationService());

final routerProvider = Provider<GoRouter>((ref) {
  // final navigationState = ref.watch(navigationService);

  return locator<GoRouter>();
});
