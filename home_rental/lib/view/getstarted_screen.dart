import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental/view/home_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State createState() => _GetStartedSceenState();
}

class _GetStartedSceenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/homescreen.png',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Let's find your paradise",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Find your perfect dream space with \njust a few clicks',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: const Color.fromRGBO(101, 101, 101, 1),
            ),
          ),
          const SizedBox(
            height: 30,
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
                backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(32, 169, 247, 1),
            )),
            child: Text(
              "Get started",
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
