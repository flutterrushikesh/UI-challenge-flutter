import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    double screenWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {},
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

      //  Container(
      //   width: double.infinity,
      //   height: screenHeight * 0.07,
      //   alignment: Alignment.center,
      //   decoration: BoxDecoration(
      //     color: Color.fromRGBO(9, 112, 62, 1),
      //   ),
      //   child:
    );
  }
}
