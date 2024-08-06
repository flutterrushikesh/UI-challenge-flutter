import 'package:flutter/material.dart';
import 'package:vibe_stream/view/gallery_screen.dart';

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
    );
  }
}
