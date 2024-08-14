import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:wallezy/view/card_screen.dart';
import 'package:wallezy/view/history_screen.dart';
import 'package:wallezy/view/home_screen.dart';
import 'package:wallezy/view/more_screen.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller =
        PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: controller,
      screens: listOfScreens(),
      items: listOfItems(),
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> listOfScreens() {
    return [
      HomeScreen(),
      HistoryScreen(),
      const CardScreen(),
      MoreScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> listOfItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/home.png',
        ),
        activeColorSecondary: const Color.fromRGBO(111, 69, 233, 1),
        title: "Home,",
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('assets/icon/history.png'),
        title: "History",
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/cards.png',
        ),
        title: "Cards",
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/more.png',
        ),
        title: "More",
      )
    ];
  }
}
