import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Card_Top_Up_Screen/Widgets/details_container.dart';
import 'package:transyte/View/Change_PIN_Screen/Widgets/credit_card.dart';

class CardTopupScreen extends StatelessWidget {
  const CardTopupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Top Up",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.052,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topLeft,
        children: [
          // Image.asset('assets/images/Ellipse 14.png'),

          ///DETAILS OF THAT SCREEN.
          DetailsContainer(),

          ///CREDIT CARD.
          CreditCard(),
        ],
      ),
    );
  }
}
