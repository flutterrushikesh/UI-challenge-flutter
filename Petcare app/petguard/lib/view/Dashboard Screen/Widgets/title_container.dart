import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    //measures a height of mobile screen.
    final double screenHeight = MediaQuery.of(context).size.height;

    //measures a width of screen.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.018,
        right: screenWidth * 0.041,
        left: screenWidth * 0.041,
      ),
      margin: EdgeInsets.only(
        top: screenHeight * 0.025,
        bottom: screenHeight * 0.025,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(22, 34, 51, 0.08),
            blurRadius: 16,
            spreadRadius: -4,
            offset: Offset(0, 8),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: "In Love With Pets?",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              children: [
                TextSpan(
                  text: "\nGet all what you need for them",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                )
              ],
            ),
          ),
          Image.asset('assets/images/love pet.png'),
        ],
      ),
    );
  }
}
