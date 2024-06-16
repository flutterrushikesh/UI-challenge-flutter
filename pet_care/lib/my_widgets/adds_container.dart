import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddsContainer extends StatefulWidget {
  final String imagePath;
  final String description;
  const MyAddsContainer(
      {required this.imagePath, super.key, required this.description});

  @override
  State<MyAddsContainer> createState() => _MyAddsContainerState();
}

class _MyAddsContainerState extends State<MyAddsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(245, 146, 69, 1),
      ),
      child: Row(
        children: [
          Text(
            widget.description,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Image.asset(widget.imagePath),
        ],
      ),
    );
  }
}
