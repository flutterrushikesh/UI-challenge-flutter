import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalContainer extends StatelessWidget {
  const TotalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        top: screenHeight * 0.01,
        bottom: screenHeight * .01,
        right: screenWidth * 0.041,
        left: screenWidth * 0.041,
      ),
      height: screenHeight * 0.1,
      width: screenWidth * 0.7,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(9, 5, 20, 0.11),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Earned",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                "\$450,49",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(9, 112, 62, 1),
                ),
              )
            ],
          ),
          const DottedLine(
            direction: Axis.vertical,
            lineLength: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Spent",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                "\$230,12",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
