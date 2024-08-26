import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
        leading: Container(),
        title: Text(
          "AdaBank",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.082,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(9, 112, 62, 1),
          ),
        ),
      ),
    );
  }
}
