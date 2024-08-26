import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdContainer extends StatelessWidget {
  const AdContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.010,
        right: screenWidth * 0.012,
        left: screenWidth * 0.012,
      ),
      margin: EdgeInsets.only(
        bottom: screenHeight * 0.025,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(245, 146, 69, 1),
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
              text: "60% OFF",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.062,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: "\nGet all what you need for them",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
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
