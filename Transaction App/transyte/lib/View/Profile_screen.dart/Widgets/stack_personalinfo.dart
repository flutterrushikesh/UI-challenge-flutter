import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'package:transyte/View/Profile_Setting_Screen/profile_setting_screen.dart';

import 'package:transyte/View/Profile_screen.dart/Widgets/personal_info_container.dart';
import 'package:transyte/View/Profile_screen.dart/Widgets/user_name_and_profile.dart';

class StackPersonalInfo extends StatelessWidget {
  const StackPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: screenHeight / 2,
      child: Stack(
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
          const UserNameAndProfile(),
          const PersonalInfoContainer(),
        ],
      ),
    );
  }
}
