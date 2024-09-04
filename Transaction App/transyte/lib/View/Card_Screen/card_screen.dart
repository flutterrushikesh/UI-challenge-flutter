import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Card_Screen/Widgets/card_setting.dart';
import 'package:transyte/View/Card_Screen/Widgets/limit_per_transaction.dart';
import 'package:transyte/View/Card_Screen/Widgets/set_buget.dart';
import 'package:transyte/View/Change_PIN_Screen/Widgets/credit_card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My Cards",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.052,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        // alignment: Alignment.topLeft,
        children: [
          // Image.asset('assets/images/Ellipse 14.png'),

          Positioned.fill(
            top: screenHeight * 0.3,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.7,
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
                color: Color.fromRGBO(246, 246, 246, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),

                  ///CARD SETTINGS ROW.
                  const CardSetting(),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    "Settings",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(8, 4, 34, 0.5),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),

                  //SET BUDGET ROW.
                  const SetBuget(),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),

                  ///LIMIT PER TRANSACTION ROW.
                  const LimitPerTransaction(),
                ],
              ),
            ),
          ),

          ///TO SHOW THE CARD.
          const CreditCard(),
        ],
      ),
    );
  }
}
