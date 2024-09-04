import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Login%20Screen/Widgets/country_code.dart';

import 'package:transyte/View/Login%20Screen/Widgets/next_button.dart';
import 'package:transyte/View/Login%20Screen/Widgets/phone_keyboard_on_screen.dart';
import 'package:transyte/View/Login%20Screen/Widgets/phone_number_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        leading: Image.asset('assets/logo/Logo.png'),
        title: Text(
          "AdaBank",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.082,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(9, 112, 62, 1),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * .018,
          right: screenWidth * 0.041,
          left: screenWidth * 0.041,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Text(
                    "Welcome",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.082,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  Text(
                    "Enter your mobile number for Continue",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.06,
                  ),
                  const Row(
                    children: [
                      ///COUNTRY CODE PICKER.
                      MyCountryCode(),

                      ///TEXTFIELD FOR GET PHONE NUMBER FROM USER.
                      Expanded(
                        child: PhoneNumberTextfield(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Column(
              children: [
                ///TO DISPLAY THE KEYBOARD.
                PhoneKeyboardOnScreen(),

                ///NEXT BUTTON TO NAVIGATE TO NEXT SCREEN.
                NextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
