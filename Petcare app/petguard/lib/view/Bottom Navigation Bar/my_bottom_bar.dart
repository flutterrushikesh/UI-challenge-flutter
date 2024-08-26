import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:petguard/controller/navigation_screen_controller.dart';

class MyBottomNavBar extends StatelessWidget {
  ///REGISTER A CONTROLLER
  final NavigationScreensController putController =
      Get.put(NavigationScreensController());

  ///FIND A REGISTERED CONTROLLER.
  final NavigationScreensController findController =
      Get.find<NavigationScreensController>();

  MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.width;
    return PersistentTabView(
      context,
      navBarStyle: NavBarStyle.style15,
      margin: EdgeInsets.only(
        bottom: screenHeight * 0.01,
      ),
      items: [
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/icon/home.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          title: "Home",
          inactiveIcon: Image.asset(
            'assets/icon/home.png',
            color: const Color.fromRGBO(126, 128, 143, 1),
          ),
          inactiveColorPrimary: const Color.fromRGBO(126, 128, 143, 1),
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/icon/heart.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          inactiveIcon: Image.asset(
            'assets/icon/heart.png',
            color: const Color.fromRGBO(126, 128, 143, 1),
          ),
          title: "Service",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/icon/shopping  cart.png',
          ),
          title: "Shop",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/icon/clock.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          inactiveIcon: Image.asset(
            'assets/icon/clock.png',
            color: const Color.fromRGBO(126, 128, 143, 1),
          ),
          title: "History",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
        PersistentBottomNavBarItem(
          icon: Image.asset(
            'assets/icon/user.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          inactiveIcon: Image.asset(
            'assets/icon/user.png',
            color: const Color.fromRGBO(126, 128, 143, 1),
          ),
          title: "Profile",
          activeColorPrimary: const Color.fromRGBO(245, 146, 69, 1),
        ),
      ],
      screens: findController.screenList,
    );
  }
}
