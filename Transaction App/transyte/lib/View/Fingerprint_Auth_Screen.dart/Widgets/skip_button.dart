import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(
          Size(
            double.infinity,
            screenHeight * 0.07,
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(9, 112, 62, 1),
        ),
      ),
      child: Text(
        "SKIP",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: screenWidth * 0.041,
          color: Colors.white,
        ),
      ),
    );
  }
}
