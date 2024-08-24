import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableTime extends StatelessWidget {
  const AvailableTime({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          margin: EdgeInsets.all(screenHeight * 0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          child: Text(
            "09:00",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          margin: EdgeInsets.all(screenHeight * 0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "15:00",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.011),
          margin: EdgeInsets.all(screenHeight * 0.005),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
          child: Text(
            "19:00",
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
