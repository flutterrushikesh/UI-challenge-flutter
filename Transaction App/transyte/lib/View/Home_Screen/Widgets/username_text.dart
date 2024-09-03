import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsernameText extends StatelessWidget {
  const UsernameText({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return RichText(
      text: TextSpan(
        text: "Welcome",
        style: GoogleFonts.poppins(),
        children: [
          TextSpan(
            text: "\nMariana S.",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.062,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
