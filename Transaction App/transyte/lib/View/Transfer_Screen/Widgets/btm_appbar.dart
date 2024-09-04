import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtmAppbar extends StatelessWidget {
  const BtmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: screenHeight * 0.01,
              bottom: screenHeight * 0.01,
              right: screenWidth * 0.02,
              left: screenWidth * 0.02,
            ),
            margin: EdgeInsets.only(right: screenWidth * 0.06),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(9, 112, 62, 1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          Text(
            "Add Contact",
            style: GoogleFonts.poppins(),
          ),
        ],
      ),
    );
  }
}
