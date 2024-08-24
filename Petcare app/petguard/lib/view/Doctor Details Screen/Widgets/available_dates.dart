import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableDates extends StatelessWidget {
  const AvailableDates({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "Fri, 6",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "Sat, 7",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          child: Text(
            "Sun, 8",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "Mon, 9",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          child: Text(
            "Tue, 10",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
