import 'package:flutter/material.dart';

class MyBackButton extends StatefulWidget {
  final dynamic navigateTo;
  const MyBackButton({required this.navigateTo, super.key});

  @override
  State<MyBackButton> createState() => _MyBackButtonState();
}

class _MyBackButtonState extends State<MyBackButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
          return widget.navigateTo;
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromRGBO(245, 146, 69, 1),
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
