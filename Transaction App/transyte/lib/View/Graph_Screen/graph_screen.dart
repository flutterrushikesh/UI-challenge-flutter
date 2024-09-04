import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:transyte/View/Graph_Screen/Widgets/total_container.dart';
import 'package:transyte/View/Graph_Screen/Widgets/transaction_history.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 96, 72, 1),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ],
        title: Text(
          "1 Sep 2021 - 30 Sep 2021",
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(255, 255, 255, 0.6),
            fontSize: screenWidth * 0.036,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Text(
            "\$450,49",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: screenWidth * 0.092),
          ),
          SizedBox(
            width: screenWidth,
            child: Image.asset('assets/images/View Graphic.png'),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                const TransactionHistory1(),
                Positioned(
                  top: screenHeight * -0.035,

                  ///DISPLAY'S TOTAL MONEY
                  child: const TotalContainer(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
