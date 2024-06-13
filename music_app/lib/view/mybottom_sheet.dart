import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: "favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "favorite",
        ),
      ],
    );
  }
}
