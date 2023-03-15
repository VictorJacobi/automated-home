import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
// import 'package:home_automation/app/app_router.dart';
import 'package:home_automation/app/locator.dart';
import 'package:home_automation/event_screen.dart';
import 'package:home_automation/providers/providers.dart';
import 'package:home_automation/services/navigation_service.dart';

class SplashScreen extends ConsumerWidget {
  static const String id = '/SplashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    // final ro
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: ()=>Navigator.pop(context),),
        title: Text('Splash'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            // context.push('/EventScreen');
            // ref.read(routerProvider).go('/ProfileScreen');
            Navigator.push(context, MaterialPageRoute(builder: (context)=> EventScreen()));
            // locator<GoRouter>().push('/CategoryScreen/EventScreen/this?new=value&more=here');
            // locator<NavigationService>().pushNamed('/ProfileScreen');
          },
            child: Text('Splash Screen')),
      ),
    );
  }
}
