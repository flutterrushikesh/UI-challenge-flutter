import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetBuget extends StatelessWidget {
  const SetBuget({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set Card Limit",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.031,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Text(
              "You set budget for 3 categories",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.025,
                color: const Color.fromRGBO(8, 4, 34, 0.6),
              ),
            ),
          ],
        ),
        Switch(
          trackColor: const WidgetStatePropertyAll(
            Color.fromRGBO(9, 112, 62, 1),
          ),
          inactiveThumbColor: Colors.white,
          value: true,
          onChanged: (value) {},
        ),
      ],
    );
  }
}
