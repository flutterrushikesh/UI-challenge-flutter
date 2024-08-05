import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibe_stream/view/bottom_nav.dart';
import 'package:vibe_stream/view/gallery_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/images/hs.png'),
              Positioned(
                top: 420,
                child: Image.asset('assets/images/shaddow.png'),
              ),
              Positioned(
                top: 420,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Dancing between \nThe shadows \nOf rhythm',
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) {
                    return const MyBottomNav();
                  },
                ),
              );
            },
            child: Container(
              width: 260,
              height: 45,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(255, 46, 0, 1),
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(19, 19, 19, 1),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 260,
              height: 45,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(255, 46, 0, 1),
                ),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(19, 19, 19, 1),
              ),
              child: Text(
                "Continue with Email",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 46, 0, 1),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Text(
            'by continuing you agree to terms \nof services and  Privacy policy',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(203, 200, 200, 1),
            ),
          )
        ],
      ),
    );
  }
}
