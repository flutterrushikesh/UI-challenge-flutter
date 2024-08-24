import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A SCREEN HEIGHT
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURE A SCREEB WIDTH.
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.018,
        right: screenWidth * 0.031,
        left: screenWidth * 0.031,
      ),
      margin: EdgeInsets.only(
        top: screenHeight * 0.013,
        bottom: screenHeight * 0.025,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(245, 146, 69, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Lets Find Specialist \nDoctor for Your Pet!",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Image.asset('assets/images/doctor.png'),
        ],
      ),
    );
  }
}
