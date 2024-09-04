import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/phone_number_controller.dart';

import 'package:transyte/View/Set_Password_Scree/set_password_screen.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {
        bool isValidPhone =
            Provider.of<PhoneNumberController>(context, listen: false)
                .validatePhoneKey
                .currentState!
                .validate();

        if (isValidPhone) {
          ///NAVIGATE TO SETPASSWORD SCREEN TO SET PASSWORD.
          PersistentNavBarNavigator.pushNewScreen(
            context,
            screen: const SetPasswordScreen(),
            pageTransitionAnimation: PageTransitionAnimation.fade,
          );
        }
      },
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(
          double.infinity,
          screenHeight * 0.07,
        )),
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(9, 112, 62, 1),
        ),
      ),
      child: Text(
        "Next",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: screenWidth * 0.041,
          color: Colors.white,
        ),
      ),
    );
  }
}
