import 'package:flutter/material.dart';

class PopularSingleImg extends StatefulWidget {
  final String imagePath;
  const PopularSingleImg({required this.imagePath, super.key});

  @override
  State<PopularSingleImg> createState() => _PopularSingleImgState();
}

class _PopularSingleImgState extends State<PopularSingleImg> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.imagePath);
  }
}
