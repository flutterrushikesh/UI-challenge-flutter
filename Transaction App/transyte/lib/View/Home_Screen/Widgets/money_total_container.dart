import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:transyte/View/Home_Screen/Widgets/menu_row.dart';

class MoneyTotalContainer extends StatelessWidget {
  const MoneyTotalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.04,
        bottom: screenHeight * 0.05,
        right: screenWidth * 0.041,
        left: screenWidth * 0.041,
      ),
      child: Container(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          right: screenWidth * 0.03,
          left: screenWidth * 0.03,
        ),
        decoration: BoxDecoration(
          border: const GradientBoxBorder(
            width: 2,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(250, 250, 250, 0.05),
                Color.fromRGBO(250, 250, 250, 0.05),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(246, 246, 246, 0.15),
        ),
        child: Column(
          children: [
            Text(
              "Total Balance",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.031,
                color: const Color.fromRGBO(255, 255, 255, 0.6),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            Text(
              "\$450,49",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.108,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Divider(
              color: Color.fromRGBO(255, 255, 255, 0.3),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),

            ///THAT CONTAINS A MENU.
            const MenuRow(),
          ],
        ),
      ),
    );
  }
}
