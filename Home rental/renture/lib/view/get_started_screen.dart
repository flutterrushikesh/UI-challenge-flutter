import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:renture/view/home_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/home.png',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 70,
          ),
          Text(
            'Lets find your Paradise',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 90,
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
            height: MediaQuery.of(context).size.height / 80,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color.fromRGBO(32, 169, 247, 1),
              ),
            ),
            child: Text(
              'Get Started',
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
