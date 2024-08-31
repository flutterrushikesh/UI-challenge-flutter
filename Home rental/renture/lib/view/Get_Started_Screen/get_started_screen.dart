import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:renture/view/Home_Screen/home_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}");

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/home.png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.014,
          ),
          Text(
            'Lets find your Paradise',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            'Find your perfect dream space \nwith just a few clicks',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color.fromRGBO(101, 101, 101, 1),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color.fromRGBO(32, 169, 247, 1),
              ),
            ),
            child: Text(
              'Get Started',
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.052,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
