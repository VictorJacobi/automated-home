import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
// import 'package:home_automation/app/app_router.dart';
import 'package:home_automation/app/locator.dart';
import 'package:home_automation/providers/providers.dart';
import 'package:home_automation/services/navigation_service.dart';
import 'Home_page.dart';

void main() {
  setupLocator();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0f0f0f),
      ),
      routerConfig: router,
      // onGenerateRoute: (settings) => generateRoute(settings),
      // home: HomePage(),
    );
  }
}