import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScannedUserDetail extends StatelessWidget {
  const ScannedUserDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: screenHeight * 0.76,
      child: Container(
        width: screenWidth,
        padding: EdgeInsets.only(
          top: screenHeight * 0.03,
          bottom: screenHeight * 0.02,
          right: screenWidth * 0.051,
          left: screenWidth * 0.051,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: screenHeight * 0.02,
                bottom: screenHeight * 0.02,
                right: screenWidth * 0.051,
                left: screenWidth * 0.051,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(9, 112, 62, 1),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.04),
                    child: Image.asset('assets/images/ojman.png'),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Ojaman",
                      style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.041,
                        color: const Color.fromRGBO(9, 112, 62, 1),
                      ),
                      children: [
                        TextSpan(
                          text: "\nBank - 0987 3422 8756",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.031,
                            color: const Color.fromRGBO(9, 112, 62, 0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color.fromRGBO(9, 112, 62, 1),
                ),
                minimumSize: WidgetStatePropertyAll(
                  Size(screenWidth * 0.84, screenHeight * 0.07),
                ),
              ),
              child: Text(
                "Check out",
                style: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.041,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
