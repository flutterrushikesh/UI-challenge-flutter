import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:petguard/view/Shop%20Screen.dart/shop_screen.dart';
import 'package:petguard/view/dash_board_screen.dart';
import 'package:petguard/view/veterinary_scree.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarStyle: NavBarStyle.style15,
      items: [
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/icon/home.png'),
          title: "Home",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/icon/heart.png'),
          title: "Service",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/icon/shopping  cart.png'),
          title: "Shop",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/icon/clock.png'),
          title: "History",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset('assets/icon/user.png'),
          title: "Profile",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
      ],
      screens: screenList(),
    );
  }

  List<Widget> screenList() {
    return [
      DashBoardScreen(),
      VeterinaryScreen(),
      ShopScreen(),
      const Scaffold(),
      const Scaffold(),
    ];
  }
}
