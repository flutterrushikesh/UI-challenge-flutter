import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/My_Bottom_Navbar/my_bottom_navbar.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const MyBottomNavbar(),
          ),
          (route) => false,
        );
      },
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
        "FINISH",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: screenWidth * 0.041,
          color: Colors.white,
        ),
      ),
    );
  }
}
