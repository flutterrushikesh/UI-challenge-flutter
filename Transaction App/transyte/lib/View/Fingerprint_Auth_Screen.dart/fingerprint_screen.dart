import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Fingerprint_Auth_Screen.dart/Widgets/finish_button.dart';
import 'package:transyte/View/Fingerprint_Auth_Screen.dart/Widgets/skip_button.dart';
import 'package:transyte/View/Set_Password_Scree/Widgets/my_back_button.dart';

class FingerprintScreen extends StatelessWidget {
  const FingerprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),

        ///BACK BUTTON.
        leading: const MyBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          right: screenWidth * 0.041,
          left: screenHeight * 0.031,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/fingerprint.png'),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Text(
              "Use Touch ID To \nAuthorise Paymentts",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.062,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.018,
            ),
            Text(
              "Active touch ID so you don’t need to confirm \nyour PIN every time you want to send money",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.031,
                color: const Color.fromRGBO(8, 4, 34, 0.6),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.07,
            ),

            ///FINISH THE PROCESS.
            const FinishButton(),
            SizedBox(
              height: screenHeight * 0.03,
            ),

            ///SKIP THE PROCESS.
            const SkipButton(),
          ],
        ),
      ),
    );
  }
}
