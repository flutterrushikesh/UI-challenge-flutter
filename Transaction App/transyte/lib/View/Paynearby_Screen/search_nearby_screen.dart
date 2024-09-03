import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:transyte/View/NearbyUser_Screen/nearby_user_screen.dart';
import 'package:transyte/View/Paynearby_Screen/Widgets/back_to_transferscreen_button.dart';

class SearhcNearbyScreen extends StatelessWidget {
  const SearhcNearbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    Future.delayed(
      const Duration(seconds: 4),
      () => PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: const NearbyUserScreen(),
        pageTransitionAnimation: PageTransitionAnimation.fade,
      ),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: const BackToTransferscreenButton(),
        title: Text(
          'Pay Nearby',
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.036,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.1,
          bottom: screenHeight * 0.06,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/illustrasi radar.png'),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                'Searching For People \nNearby..',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.052,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                'To find your friends, ask them to \nopen the screen in their app, \nor invite them to join',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(8, 4, 34, 0.6),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(
                    Color.fromRGBO(9, 112, 62, 1),
                  ),
                  minimumSize: WidgetStatePropertyAll(
                    Size(screenWidth * 0.6, screenHeight * 0.06),
                  ),
                ),
                child: Text(
                  "NEED HELP?",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.041,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
