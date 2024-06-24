import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(245, 245, 247, 1),
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      height: 70,
      child: Row(
        children: [
          Icon(Icons.home),
        ],
      ),
    );
  }
}
