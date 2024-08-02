import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:wallezy/view/history_screen.dart';
import 'package:wallezy/view/home_screen.dart';
import 'package:wallezy/view/more_screen.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> widgetList = [
    const HomeScreen(),
    const HistoryScreen(),
    const Scaffold(),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: const <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.linear,
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        // letIndexChange: (index) => true,
      ),
      body: widgetList[page],
    );
  }
}
