import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(9, 112, 62, 1),
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(screenWidth * 0.6, screenHeight * 0.06),
        ),
      ),
      child: Text(
        "NEED HELP?",
        style: GoogleFonts.poppins(
          fontSize: screenWidth * 0.041,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
