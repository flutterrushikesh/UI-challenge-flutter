import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:transyte/Controllers/card_element_controller.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///MEASURES A HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURES A WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;

    final CardElementController localObj =
        Provider.of<CardElementController>(context);
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
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topLeft,
            children: [
              Positioned(child: Image.asset('assets/images/Ellipse 14.png')),
              Positioned(
                top: screenHeight * 0.1,
                // left: screenWidth * -0.18,
                child: Image.asset('assets/images/card.png'),
              ),
              // Positioned(
              //   top: 50,
              //   child: Container(
              //     width: double.infinity,
              //     decoration: const BoxDecoration(
              //       color: Color.fromRGBO(246, 246, 246, 1),
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(30),
              //         topRight: Radius.circular(30),
              //       ),
              //     ),
              //     child: Column(
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           children: List.generate(
              //             localObj.listOfElement.length,
              //             (index) => Container(
              //               child: Column(
              //                 children: [
              //                   Image.asset(
              //                     localObj.listOfElement[index].iconPath,
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
