import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Profile_screen.dart/Widgets/user_detail_bottomsheet/user_detail_bottom_sheet.dart';

class PersonalInfoContainer extends StatelessWidget {
  const PersonalInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: screenHeight * 0.28,
      left: screenWidth * 0.04,
      child: Container(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          left: screenWidth * 0.07,
          right: screenWidth * 0.07,
        ),
        margin: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          left: screenWidth * 0.07,
          right: screenWidth * 0.07,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Personal Account Information",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.041,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "\$Castag",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    color: const Color.fromRGBO(8, 4, 34, 0.6),
                  ),
                ),
                SizedBox(width: screenWidth * 0.3),
                Text(
                  "\$nextarui",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                ),
                Image.asset(
                  'assets/icon/copy.png',
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Accout Number",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    color: const Color.fromRGBO(8, 4, 34, 0.6),
                  ),
                ),
                SizedBox(width: screenWidth * 0.12),
                Text(
                  "903402383011",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.031,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                ),
                Image.asset(
                  'assets/icon/copy.png',
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            GestureDetector(
              onTap: () async {
                userDetailBottomSheet(
                    context: context,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth);
              },
              child: Center(
                child: Image.asset(
                  'assets/icon/Arrow Down 2.png',
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
