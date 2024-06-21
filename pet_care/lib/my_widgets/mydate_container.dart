import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDateContainer extends StatefulWidget {
  final String date;
  const MyDateContainer({required this.date, super.key});

  @override
  State<MyDateContainer> createState() => _MyDateContainerState();
}

class _MyDateContainerState extends State<MyDateContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(245, 146, 69, 1),
        ),
        borderRadius: BorderRadius.circular(150),
      ),
      child: Text(
        widget.date,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }
}
