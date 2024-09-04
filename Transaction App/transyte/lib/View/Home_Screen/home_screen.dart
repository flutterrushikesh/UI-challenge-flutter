import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Home_Screen/Widgets/history_listview.dart';
import 'package:transyte/View/Home_Screen/Widgets/money_total_container.dart';
import 'package:transyte/View/Home_Screen/Widgets/profile_image.dart';
import 'package:transyte/View/Home_Screen/Widgets/username_text.dart';
import 'package:transyte/View/Home_Screen/Widgets/send_again_users.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

        ///WELCOME & USERNAME.
        title: const UsernameText(),
        actions: const [
          ///PROFILE IMAGE.
          ProfileImage(),
        ],
      ),
      body: ListView(
        children: [
          ///TOTAL MONEY SHOW CONTAINER.
          const MoneyTotalContainer(),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(246, 246, 246, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.018,
                bottom: screenHeight * 0.06,
                right: screenWidth * 0.041,
                left: screenHeight * 0.031,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Send Again",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(1, 1, 1, 0.6),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),

                  ///USER LIST TO SEND AGAIN MONEY
                  const SendAgainUsers(),
                  SizedBox(
                    height: screenHeight * 0.023,
                  ),
                  Text(
                    "Transaction History",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(1, 1, 1, 0.6),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.025,
                  ),

                  ///HISTORY OF TRANSACTIONS.
                  const HistoryListview(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
