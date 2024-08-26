import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petguard/view/Login%20Screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ///INITSTATE CALLS AUTOMATICALLY NAVIGATE TO
  ///LOGIN SCREEN.
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(
        () => const LoginScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    ///MEASURE HEIGHT OF SCREEN.
    final double screenHeight = MediaQuery.of(context).size.height;

    ///MEASURE WIDTH OF SCREEN.
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/splash.png'),
            SizedBox(
              height: screenHeight * 0.033,
            ),
            Text(
              "PetGuardian",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.082,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              "\"Your Pets' Lifelong Protector\"",
              style: GoogleFonts.poppins(
                fontSize: screenWidth * 0.041,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
