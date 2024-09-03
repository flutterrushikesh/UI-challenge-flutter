import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:transyte/View/Home_Screen/Widgets/profile_image.dart';
import 'package:transyte/View/Profile_Setting_Screen/profile_setting_screen.dart';

class StackPersonalInfo extends StatelessWidget {
  const StackPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      // alignment: Alignment.topLeft,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/Ellipse 14.png',
        ),
        Positioned(
          left: screenWidth * 0.22,
          child: Image.asset(
            'assets/images/Ellipse 15.png',
          ),
        ),
        Positioned(
          top: screenHeight * 0.1,
          left: screenWidth * 0.3,
          child: Column(
            children: [
              const ProfileImage(),
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
        ),
        Positioned(
          top: screenHeight * 0.29,
          left: screenWidth * 0.04,
          child: Container(
            alignment: Alignment.center,
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
                  onTap: () {
                    log("ON Tap");
                    showModalBottomSheet(
                        context: context, builder: (context) => Container());
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
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Profile",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () => PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: const ProfileSettingScreen(),
                  pageTransitionAnimation: PageTransitionAnimation.fade,
                ),
                child: const Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
