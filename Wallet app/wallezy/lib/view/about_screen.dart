import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(29, 98, 202, 1),
                size: 18,
              ),
              Text(
                "Back",
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color.fromRGBO(29, 98, 202, 1)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "About eWallet",
              style: GoogleFonts.sora(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "Our app allows you to easily store, manage, and spend your money on the go. With our secure platform, you can make transactions, check your balance, and track your spending all in one place.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(83, 93, 102, 1)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Text(
                  "Whether you're paying bills, shopping online, or sending money to friends and family, our app makes it easy and convenient to do so. Plus, with our various promotions and discounts, you can save even more while using our app.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    color: const Color.fromRGBO(83, 93, 102, 1),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Text(
                  "Thank you for choosing us as your preferred e-wallet solution. If you have any questions or feedback, please don't hesitate to contact us. We're always here to help.",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.sora(
                      fontSize: 12,
                      color: const Color.fromRGBO(83, 93, 102, 1)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
