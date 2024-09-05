import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Profile_screen.dart/Widgets/my_profile_pic.dart';

class UserNameAndProfile extends StatelessWidget {
  const UserNameAndProfile({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: screenHeight * 0.1,
      left: screenWidth * 0.29,
      child: Column(
        children: [
          const MyProfilePic(),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Text(
            "Mariana S.",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.062,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          Text(
            "marianasword@gmail.com",
            style: GoogleFonts.poppins(
              fontSize: screenWidth * 0.031,
              color: const Color.fromRGBO(255, 255, 255, 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
