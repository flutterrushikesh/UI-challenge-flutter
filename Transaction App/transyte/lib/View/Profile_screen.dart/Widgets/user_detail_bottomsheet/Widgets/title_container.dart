import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.018,
        bottom: screenHeight * 0.018,
        left: screenWidth * 0.07,
        right: screenWidth * 0.07,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(6, 5, 21, 0.05),
              blurRadius: 40,
              offset: Offset(0, 15),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Detail Profile",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.041,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Edit",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(9, 112, 62, 1),
            ),
          )
        ],
      ),
    );
  }
}
