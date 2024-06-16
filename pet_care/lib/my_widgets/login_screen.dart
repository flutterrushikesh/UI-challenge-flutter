import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care/my_widgets/loginbuttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              'Login',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: const Color.fromRGBO(245, 146, 69, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/BrandmarkLogo2.png'),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(250, 200, 162, 1),
                ),
              ),
              child: Text(
                'PetGuardian@gmail.com',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(250, 200, 162, 1),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    '************',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.visibility_off,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                text: "Forgot Password?",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(31, 32, 41, 1),
                ),
                children: [
                  TextSpan(
                    text: ' Click Here',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const LoginButtons(buttonName: 'LOGIN'),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/Line.png'),
            const SizedBox(
              height: 20,
            ),
            const LoginButtons(buttonName: "LOGIN WITH EMAIL"),
            const SizedBox(height: 5),
            const LoginButtons(buttonName: "LOGIN WITH FACEBOOK"),
            const SizedBox(
              height: 50,
            ),
            Text(
              'By continue you agree to our \nTerms & Privacy Policy',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: const Color.fromRGBO(31, 32, 41, 1),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 247, 1),
    );
  }
}
