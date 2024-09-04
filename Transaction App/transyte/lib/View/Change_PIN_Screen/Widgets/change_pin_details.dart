import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Change_PIN_Screen/Widgets/confirm_pin_row.dart';
import 'package:transyte/View/Change_PIN_Screen/Widgets/new_pin_row.dart';
import 'package:transyte/View/Change_PIN_Screen/Widgets/save_button.dart';

class ChangePinDetails extends StatelessWidget {
  const ChangePinDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned.fill(
      top: screenHeight * 0.3,
      child: Container(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * .018,
          right: screenWidth * 0.05,
          left: screenWidth * 0.05,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              30,
            ),
            topRight: Radius.circular(30),
          ),
          color: const Color.fromRGBO(246, 246, 246, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: SizedBox(
                    height: screenHeight * 0.15,
                  ),
                ),

                ///ENETER NEW PIN.
                const NewPinRow(),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  "Enter 6 numbers as new PIN to retain your card",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.025,
                    color: const Color.fromRGBO(8, 4, 34, 0.5),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),

                ///PIN CONFIRMATION.
                const ConfirmPinRow(),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                const Divider(
                  thickness: 0.5,
                ),
              ],
            ),

            ///SAVE CHANGES BUTTON.
            const SaveButton(),
          ],
        ),
      ),
    );
  }
}
