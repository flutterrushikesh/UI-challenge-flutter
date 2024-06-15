import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final String imagePath;
  const MyContainer({required this.imagePath, super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(161, 161, 161, 1)
          ],
          // transform: GradientRotation(10),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Image.asset(widget.imagePath),
    );
  }
}
