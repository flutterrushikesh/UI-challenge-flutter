import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Set_Password_Scree/Widgets/authenticate_button.dart';
import 'package:transyte/View/Set_Password_Scree/Widgets/my_back_button.dart';
import 'package:transyte/View/Set_Password_Scree/Widgets/password_textfields.dart';
import 'package:transyte/View/Set_Password_Scree/Widgets/set_password_keyboard.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

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
        automaticallyImplyLeading: false,

        ///Back button.
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
                children: [
                  Text(
                    "Set your PIN",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.082,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.018,
                  ),
                  Text(
                    "You will get use this to login next time",
                    style: GoogleFonts.poppins(
                      fontSize: screenWidth * 0.031,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.06,
                  ),

                  ///SET PASSWORD TEXTFEILDS.
                  const PasswordTextfields(),
                ],
              ),
            ),
            const SizedBox(
              child: Column(
                children: [
                  ///NUMERIC KEYBOARD ON SCREEN.
                  SetPasswordKeyboard(),

                  ///NEXT BUTTON TO AUTHENTICATE PASSWORD.
                  ///NAVIGATE TO RESPECTIVE SCREEN.
                  AuthenticateButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
