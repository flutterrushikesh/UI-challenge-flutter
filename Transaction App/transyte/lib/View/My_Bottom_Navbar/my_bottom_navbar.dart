import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/nav_bar_controller.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavBarController localObj = Provider.of<NavBarController>(context);
    return PersistentTabView(
      context,
      navBarStyle: NavBarStyle.style16,

      // isVisible: false,

      items: List.generate(
        localObj.items.length,
        (index) => PersistentBottomNavBarItem(
          icon: Image.asset(
            localObj.items[index].activeIcon,
          ),
          inactiveIcon: Image.asset(
            localObj.items[index].iconPath,
          ),
          activeColorPrimary: const Color.fromRGBO(9, 112, 62, 1),
        ),
      ),
      screens: localObj.screenList,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.060),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
