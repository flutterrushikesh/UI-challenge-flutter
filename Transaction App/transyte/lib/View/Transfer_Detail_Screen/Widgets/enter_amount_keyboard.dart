import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';

class EnterAmountKeyboard extends StatelessWidget {
  const EnterAmountKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return NumericKeyboard(
      onKeyboardTap: (digit) {
        // Provider.of<PhoneNumberController>(context, listen: false)
        //     .onTapNumber(digit);
      },
      textStyle: GoogleFonts.poppins(
        fontSize: screenWidth * 0.067,
        fontWeight: FontWeight.w600,
      ),
      leftIcon: Text(
        ".",
        style: GoogleFonts.poppins(
          fontSize: screenWidth * 0.067,
          fontWeight: FontWeight.w600,
        ),
      ),
      rightButtonFn: () {
        // Provider.of<PhoneNumberController>(context, listen: false)
        //     .removeLastNumber();
      },
      rightIcon: Container(
        padding: EdgeInsets.only(
          left: screenWidth * 0.020,
          top: screenHeight * 0.01,
          bottom: screenHeight * 0.01,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(35, 11, 52, 1),
        ),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: screenWidth * 0.052,
        ),
      ),
    );
  }
}
