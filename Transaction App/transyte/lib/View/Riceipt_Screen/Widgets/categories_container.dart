import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            "Categories",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.041,
              color: const Color.fromRGBO(8, 4, 34, 0.6),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.18,
          ),
          Container(
            padding: EdgeInsets.all(screenWidth * 0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(5, 5, 26, 0.08),
                  blurRadius: 30,
                  offset: Offset(0, 7),
                ),
              ],
            ),
            child: Image.asset('assets/icon/Camera.png'),
          ),
          SizedBox(
            width: screenWidth * 0.04,
          ),
          Text(
            "Equipment",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Icon(
            Icons.arrow_drop_down_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}
