import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDoctorButton extends StatelessWidget {
  const BookDoctorButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.012,
        bottom: screenHeight * 0.012,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(245, 146, 69, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Book now",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: screenWidth * 0.031,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
