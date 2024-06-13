import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/gallary_screen.dart';
import 'package:music_app/view/mybottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(9, 10, 10, 1),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset('assets/images/home_screen.png'),
              Positioned(
                top: 425,
                child: Image.asset('assets/images/shadow.png'),
              ),
              Positioned(
                top: 415,
                left: 40,
                child: Text(
                  'Dancing between \nThe shadows \nOf rhythm',
                  style: GoogleFonts.inter(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return const GallaryScreen();
                        },
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(245, 46, 0, 1),
                    ),
                    minimumSize: const MaterialStatePropertyAll(
                      Size(260, 47),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: Text(
                    "Get started",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(
                      Size(260, 47),
                    ),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    side: const MaterialStatePropertyAll(
                      BorderSide(
                        color: Color.fromRGBO(255, 61, 0, 1),
                      ),
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: Text(
                    'Continue with Email',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(245, 46, 0, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'by continuing you agree to terms \nof services and Privacy policy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(203, 200, 200, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
