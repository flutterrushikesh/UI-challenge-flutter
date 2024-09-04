import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transyte/View/Menu_Screen/Widgets/back_button.dart';
import 'package:transyte/View/Menu_Screen/Widgets/menu_search_textfield.dart';
import 'package:transyte/View/Menu_Screen/Widgets/other_menu.dart';
import 'package:transyte/View/Menu_Screen/Widgets/short_cuts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,

        ///BACK BUTTON.
        leading: const BackToHome(),
        title: Text(
          "Menu",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.036,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.018,
          bottom: screenHeight * 0.018,
          right: screenWidth * 0.041,
          left: screenWidth * 0.041,
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.02),

            ///TEXTFIELD TO SEARCH MENU ITEMS.
            const MenuSearchTextfield(),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Text(
              "Shortcuts",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),

            ///SHORTCUT MENU'S.
            const ShortCuts(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Text(
              "Other Menu",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: screenWidth * 0.06,
            ),

            ///OTHER MENUS.
            const OtherMenu(),
          ],
        ),
      ),
    );
  }
}
