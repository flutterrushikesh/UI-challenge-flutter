import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wallezy/view/history_screen.dart';
import 'package:wallezy/view/home_screen.dart';
import 'package:wallezy/view/more_screen.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int selectecIndex = 0;
  final List<Widget> widgetList = [
    const HomeScreen(),
    const HistoryScreen(),
    const Scaffold(),
    const MoreScreen(),
  ];

  void onTap(index) {
    log("IN Taped");
    setState(() {
      selectecIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList.elementAt(selectecIndex),
      bottomNavigationBar: NavigationBar(
        elevation: 4,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,

        backgroundColor: Colors.white,
        // showSelectedLabels: ,
        onDestinationSelected: (index) {
          onTap(index);
        },
        selectedIndex: selectecIndex,
        // animationDuration: Duration(seconds: 2),
        destinations: [
          NavigationDestination(
            icon: Image.asset('assets/icons/home.png'),
            label: "Home",
            // enabled: false,
            selectedIcon: Image.asset(
              'assets/icons/home.png',
              color: const Color.fromRGBO(111, 69, 233, 1),
            ),
          ),
          NavigationDestination(
            icon: Image.asset('assets/icons/history.png'),
            label: "History",
            selectedIcon: Image.asset(
              'assets/icons/history.png',
              color: const Color.fromRGBO(111, 69, 233, 1),
            ),
          ),
          NavigationDestination(
            icon: Image.asset('assets/icons/cards.png'),
            label: "Cards",
            selectedIcon: Image.asset(
              'assets/icons/cards.png',
              color: const Color.fromRGBO(111, 69, 233, 1),
            ),
          ),
          NavigationDestination(
            icon: Image.asset('assets/icons/more.png'),
            label: "More",
            selectedIcon: Image.asset(
              'assets/icons/more.png',
              color: const Color.fromRGBO(111, 69, 233, 1),
            ),
          ),
        ],
      ),
    );
  }
}
