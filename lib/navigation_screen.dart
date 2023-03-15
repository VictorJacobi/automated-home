import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:home_automation/Home_page.dart';
import 'package:home_automation/category_screen.dart';
import 'package:home_automation/event_screen.dart';
import 'package:home_automation/profile_screen.dart';
import 'package:home_automation/splash_screen.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});
  static const String routeName = '/navigationscreen';

  // @override
  // void initState() {

  // }

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int index = 0;

  List<Widget> screens =  [
    HomeScreen(),
    CategoryScreen(),
    EventScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
      // bool result = await exitFunction();
      return true;
      },
      child: Scaffold(
        body: screens[index],
        // IndexedStack(
        //   index: context.watch<BasicUtilityProvider>().currentIndex,
        //   children: screens,
        // ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,

          type: BottomNavigationBarType.fixed,
          onTap: changeIndex,
          elevation: 8,
          items: bottomNavigationBarItems,
        ),
      ),
    );
  }
  void changeIndex(int index){
    this.index = index;
    setState(() {

    });
  }
}

List<BottomNavigationBarItem> bottomNavigationBarItems = const [

  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.home,
    ),
    icon: Icon(
      Icons.home,
    ),
    label: 'Home',
  ),
  BottomNavigationBarItem(

    activeIcon: Icon(
      Icons.bookmark,
    ),

    icon: Icon(
      Icons.bookmark_border_outlined,
    ),
    label: 'Bookings',
  ),

  BottomNavigationBarItem(
    icon: Icon(
Icons.wallet
),
    activeIcon: Icon(
        Icons.wallet_outlined,
    ),
    label: 'Wallet',
  ),

  BottomNavigationBarItem(
    activeIcon: Icon(
      Icons.person,
    ),
    icon: Icon(
      Icons.person_outline,
    ),
    label: 'Profile',
  ),

];








