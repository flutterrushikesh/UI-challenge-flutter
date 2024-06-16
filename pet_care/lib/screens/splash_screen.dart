import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/my_widgets/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              child: Image.asset('assets/images/BrandmarkLogo1.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'PetGuardian',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              "Your Pets' Lifelong Protector",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
