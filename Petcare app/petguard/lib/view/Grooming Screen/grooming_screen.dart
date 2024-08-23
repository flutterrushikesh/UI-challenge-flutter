import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/view/Grooming%20Screen/Widgets/ad_container.dart';
import 'package:petguard/view/Grooming%20Screen/Widgets/search_textfield.dart';
import 'package:petguard/view/Grooming%20Screen/Widgets/service_gridview.dart';

class GroomingScreen extends StatelessWidget {
  const GroomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: EdgeInsets.all(screenWidth * 0.03),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(245, 146, 69, 1),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          "Grooming",
          style: GoogleFonts.poppins(
            fontSize: screenWidth * 0.041,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenHeight * 0.016),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AdContainer(),
            const SearchTextfield(),
            SizedBox(
              height: screenHeight * 0.012,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Services",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Expanded(
              child: ServiceGridview(),
            ),
          ],
        ),
      ),
    );
  }
}
