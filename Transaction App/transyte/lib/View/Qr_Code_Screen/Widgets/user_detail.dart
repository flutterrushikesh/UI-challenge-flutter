import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: screenWidth * 0.02,
          ),
          padding: EdgeInsets.all(screenWidth * 0.015),
          height: screenHeight * 0.07,
          width: screenWidth * 0.16,
          decoration: const BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(9, 112, 62, 0.47),
                  Color.fromRGBO(9, 112, 62, 0.1),
                ],
                begin: Alignment.topCenter,
              ),
            ),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/Image profile.png',
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile Name",
              style: GoogleFonts.poppins(),
            ),
            Text(
              "Mariana S.",
              style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.062, fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}
