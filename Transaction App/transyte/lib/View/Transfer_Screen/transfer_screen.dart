import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Transfer_Screen/Widgets/all_contacts.dart';
import 'package:transyte/View/Transfer_Screen/Widgets/back_button.dart';
import 'package:transyte/View/Transfer_Screen/Widgets/btm_appbar.dart';
import 'package:transyte/View/Transfer_Screen/Widgets/recent_contacts.dart';
import 'package:transyte/View/Transfer_Screen/Widgets/search_contact_textfield.dart';
import 'package:transyte/View/Transfer_Screen/Widgets/radio_buttons.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,

        ///TO NAVIGATE PREVIOUS SCREEEN
        leading: const GreenBackButton(),
        title: Text(
          "Transfer",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.036,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: screenHeight * 0.02,
          ),

          ///RADIO BUTTONS TO NAVIGATE TO DIFFERENT SCREEN.
          const RadioButtons(),
          SizedBox(
            height: screenHeight * 0.08,
          ),
          Container(
            padding: EdgeInsets.only(
              top: screenHeight * 0.018,
              bottom: screenHeight * 0.1,
              right: screenWidth * 0.051,
              left: screenWidth * 0.051,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Color.fromRGBO(246, 246, 246, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                ///SEARCH TEXTFIELD TO SEARCH CONTACT.
                const SearchContactTextfield(),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Text(
                  "Recents Contacts",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(1, 1, 1, 0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                ///MOST USED CONTACTS.
                const MyContacts(),
                const Divider(
                  thickness: 0.2,
                  color: Color.fromRGBO(8, 4, 34, 0.6),
                ),
                SizedBox(
                  height: screenHeight * 0.045,
                ),
                Text(
                  "All Contacts",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(1, 1, 1, 0.6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),

                ///SAVED CONTACTS
                const AllContacts(),
              ],
            ),
          ),
        ],
      ),

      ///BOTTOM APPBAR.
      bottomSheet: const BtmAppbar(),
    );
  }
}
