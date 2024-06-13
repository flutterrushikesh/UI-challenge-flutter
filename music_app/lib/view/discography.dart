import 'package:flutter/material.dart';

class MyDiscography extends StatefulWidget {
  final String imagePath;
  const MyDiscography({required this.imagePath, super.key});
  @override
  State createState() => _MyDiscographyState();
}

class _MyDiscographyState extends State<MyDiscography> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.imagePath);
  }
}
