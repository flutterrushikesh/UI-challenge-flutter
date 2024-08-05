import 'package:flutter/material.dart';
import 'package:vibe_stream/view/gallery_screen.dart';
import 'package:vibe_stream/view/home_screen.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int currentIndex = 0;
  void navigateTo(int index) {
    currentIndex = index;
    setState(() {});
  }

  List<Widget> widgets = [
    const GalleryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          navigateTo(index);
        },
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/search.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/home.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/bag.png'),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
