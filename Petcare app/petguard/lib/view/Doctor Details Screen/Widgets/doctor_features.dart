import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DoctorFeatures extends StatelessWidget {
  final String experience;
  final String price;
  final String drLocation;
  const DoctorFeatures({
    super.key,
    required this.experience,
    required this.price,
    required this.drLocation,
  });

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(screenHeight * 0.018),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 25,
                offset: Offset(0, 11),
              ),
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 8,
                spreadRadius: -4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Experience",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                experience,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.018),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 25,
                offset: Offset(0, 11),
              ),
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 8,
                spreadRadius: -4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(screenHeight * 0.018),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 25,
                offset: Offset(0, 11),
              ),
              BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 8,
                spreadRadius: -4,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Text(
                drLocation,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
