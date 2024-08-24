import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURE A HEIGHT OF SCREEN & STORED IN SCREENHEIGHT VARIABLE
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURE A HEIGHT OF SCREEN & STORED IN SCREENHEIGHT VARIABLE
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: screenHeight * 0.035,
            bottom: screenHeight * 0.035,
            left: screenWidth * 0.041,
            right: screenWidth * 0.041,
          ),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(245, 146, 69, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: RichText(
                  text: TextSpan(
                    text: "Hellow Sarah",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "\nFind your lovable Pets",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.041,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/icon/shopping  cart.png',
              )
            ],
          ),
        ),
        Positioned(
          top: screenHeight * 0.097,
          child: SizedBox(
            height: screenHeight * 0.045,
            width: screenWidth * 0.8,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Someting Here",
                hintStyle: GoogleFonts.poppins(
                  fontSize: screenWidth * 0.031,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
