import 'package:bicycle_app/view/home_sceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: 50,
              left: 160,
              child: Image.asset('assets/images/appbarcycle.png')),
          Positioned(
            top: 340,
            child: Image.asset('assets/images/curve.png'),
          ),
          Positioned(
            top: 120,
            left: 260,
            child: Image.asset('assets/images/EXTREME.png'),
          ),
          Positioned(
            top: 270,
            left: 5,
            child: Image.asset('assets/images/splashcycle.png'),
          ),
          Positioned(
            top: 810,
            left: 145,
            child: Container(
              width: 250,
              height: 70,
              padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(36, 44, 59, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    bottomLeft: Radius.circular(38),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(-3, 4),
                      blurRadius: 4,
                    ),
                  ]),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomeSceen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      margin: const EdgeInsets.only(right: 25),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(239, 186, 51, 1),
                            style: BorderStyle.solid),
                        color: const Color.fromRGBO(75, 76, 237, 1),
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(239, 186, 51, 1),
                            blurRadius: 4,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeSceen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
