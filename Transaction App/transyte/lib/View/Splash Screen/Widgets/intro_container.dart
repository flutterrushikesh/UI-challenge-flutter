import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:transyte/View/Login%20Screen/login_screen.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        bottom: screenHeight * 0.012,
        top: screenHeight * 0.030,
        right: screenWidth * 0.027,
        left: screenWidth * 0.027,
      ),
      margin: EdgeInsets.only(
        bottom: screenHeight * 0.02,
        top: screenHeight * 0.012,
        right: screenWidth * 0.041,
        left: screenWidth * 0.041,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: const Color.fromRGBO(250, 250, 250, 0.05),
        ),
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(246, 246, 246, 1),
      ),
      child: Column(
        children: [
          Text(
            "Start payments easily \nIn the digital age",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.062,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(8, 4, 34, 1),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.015,
          ),
          Text(
            'Payment tool that is easy and fast to \nuse in this easy-to-use digital era. \nUse the features that make your \nbusiness easier',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: const Color.fromRGBO(8, 4, 34, 0.5),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          GestureDetector(
            onTap: () {
              ///NAVIGATE TO LOGIN OR PHONE NUMBER SCREEN
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const LoginScreen(),
                pageTransitionAnimation: PageTransitionAnimation.fade,
              );
            },
            child: Container(
              height: screenHeight * 0.045,
              width: screenWidth * 0.103,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(9, 112, 62, 1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.032,
          ),
        ],
      ),
    );
  }
}
