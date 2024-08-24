import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeLocationButton extends StatelessWidget {
  const SeeLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: screenWidth * 0.018,
        bottom: screenWidth * 0.018,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromRGBO(252, 219, 193, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.map_outlined,
            color: Color.fromRGBO(163, 97, 46, 1),
          ),
          Text(
            "See Location",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: screenWidth * 0.031,
              color: const Color.fromRGBO(163, 97, 46, 1),
            ),
          ),
        ],
      ),
    );
  }
}
